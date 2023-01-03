using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TelecomWebServer.Model
{
    class ResponseAbonent
    {
        public ResponseAbonent(Abonents abonents)
        {
            this.NumberAbonent = abonents.NumberAbonent;
            this.FIO = abonents.FIO;
            this.IDGender = abonents.IDGender;
            this.DateOfBirth = abonents.DateOfBirth;
            this.Phone = abonents.Phone;
            this.Email = abonents.Email;
            this.AdressPropiski = abonents.AdressPropiski;
            this.Adress = abonents.Adress;
            this.SerialAndNumber = abonents.SerialAndNumber;
            this.Code = abonents.Code;
            this.Issue = abonents.Issue;
            this.DateOfIssue = abonents.DateOfIssue;
            this.NumberOfDogovor = abonents.NumberOfDogovor;
            this.DateOfStart = abonents.DateOfStart;
            this.IDTypeOfDogovor = abonents.IDTypeOfDogovor;
            this.Reason = abonents.Reason;
            this.PersonalAccount = abonents.PersonalAccount;
            this.Services = abonents.Services;
            this.DateOfEnd = abonents.DateOfEnd;
            this.IDAbonentEqupment = abonents.IDAbonentEqupment;


        }
        public ResponseAbonent() { }
        public string NumberAbonent { get; set; }
        public string FIO { get; set; }
        public int IDGender { get; set; }
        public System.DateTime DateOfBirth { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }
        public string AdressPropiski { get; set; }
        public string Adress { get; set; }
        public string SerialAndNumber { get; set; }
        public string Code { get; set; }
        public string Issue { get; set; }
        public System.DateTime DateOfIssue { get; set; }
        public string NumberOfDogovor { get; set; }
        public System.DateTime DateOfStart { get; set; }
        public int IDTypeOfDogovor { get; set; }
        public string Reason { get; set; }
        public int PersonalAccount { get; set; }
        public string Services { get; set; }
        public Nullable<System.DateTime> DateOfEnd { get; set; }
        public string IDAbonentEqupment { get; set; }
    }
}
