using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Text.Encodings.Web;
using System.Text.Json;
using System.Text.Unicode;
using System.Threading.Tasks;
using TelecomWebServer.Context;
using TelecomWebServer.Model;


namespace TelecomWebServer
{
    class Program
    {
        static void Main(string[] args)
        {
            HttpListener server = new HttpListener();
            server.Prefixes.Add("http://localhost:15300/");

            JsonSerializerOptions options = new JsonSerializerOptions() { Encoder = JavaScriptEncoder.Create(UnicodeRanges.All) };
            server.Start();

            while (true)
            {
                HttpListenerContext context = server.GetContext();
                if (context.Request.HttpMethod == "GET")
                {
                    try
                    {
                        if (context.Request.RawUrl == "/api/abonents/")
                        {
                            var abonentList = Data.tns.Abonents.ToList();
                            string response = JsonSerializer.Serialize(Data.tns.Abonents.ToList().ConvertAll(b => new ResponseAbonent(b)), options);
                            byte[] data = Encoding.UTF8.GetBytes(response);
                            context.Response.ContentType = "application/json;charset=utf-8";
                            using (Stream stream = context.Response.OutputStream)
                            {
                                stream.Write(data, 0, data.Length);
                                context.Response.StatusCode = 200;
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine(ex.Message);
                        context.Response.StatusCode = 400;
                        context.Response.Close();

                    }
                }
                else if (context.Request.HttpMethod == "POST")
                {
                    try
                    {
                        if (context.Request.RawUrl == "/api/abonents/")
                        {
                            if (context.Request.ContentType == "application/json")
                            {
                                string request = "";
                                byte[] data = new byte[context.Request.ContentLength64];
                                using (Stream stream = context.Request.InputStream)
                                {
                                    stream.Read(data, 0, data.Length);
                                }
                                request = UTF8Encoding.UTF8.GetString(data);
                                var abonentList = JsonSerializer.Deserialize<List<ResponseAbonent>>(request);
                                foreach (var abonent in abonentList)
                                {
                                    Abonents item = new Abonents();
                                    item.NumberAbonent = abonent.NumberAbonent;
                                    item.FIO = abonent.FIO;
                                    item.IDGender = abonent.IDGender;
                                    item.DateOfBirth = abonent.DateOfBirth;
                                    item.Phone = abonent.Phone;
                                    item.Email = abonent.Email;
                                    item.AdressPropiski = abonent.AdressPropiski;
                                    item.Adress = abonent.Adress;
                                    item.SerialAndNumber = abonent.SerialAndNumber;
                                    item.Code = abonent.Code;
                                    item.Issue = abonent.Issue;
                                    item.DateOfIssue = abonent.DateOfIssue;
                                    item.NumberOfDogovor = abonent.NumberOfDogovor;
                                    item.DateOfStart = abonent.DateOfStart;
                                    item.IDTypeOfDogovor = abonent.IDTypeOfDogovor;
                                    item.Reason = abonent.Reason;
                                    item.PersonalAccount = abonent.PersonalAccount;
                                    item.Services = abonent.Services;
                                    item.DateOfEnd = abonent.DateOfEnd;
                                    item.IDAbonentEqupment = abonent.IDAbonentEqupment;
                                    Data.tns.Abonents.Add(item);
                                }
                                Data.tns.SaveChanges();
                                context.Response.StatusCode = 200;                               
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine(ex.Message);
                        context.Response.StatusCode = 400;
                        context.Response.Close();
                    }
                }
                else if (context.Request.HttpMethod == "DELETE")
                {
                    try
                    {
                        if (context.Request.QueryString.Count == 1)
                        {
                            if (context.Request.QueryString.Keys[0] == "number")
                            {
                                string number = Convert.ToString(context.Request.QueryString.Get(0));
                                var currentAbonent = Data.tns.Abonents.FirstOrDefault(b => b.NumberAbonent == number);
                                if (currentAbonent != null)
                                {
                                    Data.tns.Abonents.Remove(currentAbonent);
                                    Data.tns.SaveChanges();
                                    context.Response.StatusCode = 200;
                                    context.Response.Close();
                                }
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine(ex.Message);
                        context.Response.StatusCode = 400;
                        context.Response.Close();
                    }
                }
            }
        }
    }
}
