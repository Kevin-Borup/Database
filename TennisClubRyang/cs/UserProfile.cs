using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TennisClubRyang.cs
{
    public class UserProfile
    {
        readonly HttpContext currentContext = HttpContext.Current;

        //Saved Data:
        //  UserData
        //      UniqueNr
        //      FullName
        //      Address : Road, Nr, PostalCode, City
        //      PhoneNr
        //      Email
        //      Birthdate

        //  bool LoginAdded
        //  Login
        //      Username
        //      Password

        //  bool creditcardAdded
        //  Creditcard
        //      CardName
        //      CardNumber
        //      CardExpiration
        //      CardCode

        //User Data
        public int UserID
        {
            get
            {
                object userID = currentContext.Session["¨UserID"];
                return (userID == null) ? default(int) : Convert.ToInt32(userID);
            }
            set { currentContext.Session["UserID"] = value; }
        }

        public string FullName
        {
            get
            {
                object fullName = currentContext.Session["¨FullName"];
                return (fullName == null) ? default(string) : fullName.ToString();
            }
            set { currentContext.Session["FullName"] = value; }
        }

        // Address
        public string AddressRoad
        {
            get
            {
                object addressRoad = currentContext.Session["AddressRoad"];
                return (addressRoad == null) ? default(string) : addressRoad.ToString();
            }
            set { currentContext.Session["AddressRoad"] = value; }
        }

        public string AddressNr
        {
            get
            {
                object addressNr = currentContext.Session["AddressNr"];
                return (addressNr == null) ? default(string) : addressNr.ToString();
            }
            set { currentContext.Session["AddressNr"] = value; }
        }

        public string AddressPostalCode
        {
            get
            {
                object addressPostalCode = currentContext.Session["AddressPostalCode"];
                return (addressPostalCode == null) ? default(string) : addressPostalCode.ToString();
            }
            set { currentContext.Session["AddressPostalCode"] = value; }
        }

        public string AddressCity
        {
            get
            {
                object addressCity = currentContext.Session["AddressCity"];
                return (addressCity == null) ? default(string) : addressCity.ToString();
            }
            set { currentContext.Session["AddressCity"] = value; }
        }

        public string PhoneNr
        {
            get
            {
                object phoneNr = currentContext.Session["PhoneNr"];
                return (phoneNr == null) ? default(string) : phoneNr.ToString();
            }
            set { currentContext.Session["PhoneNr"] = value; }
        }

        public string Email
        {
            get
            {
                object email = currentContext.Session["Email"];
                return (email == null) ? default(string) : email.ToString();
            }
            set { currentContext.Session["Email"] = value; }
        }

        public DateTime Birthdate
        {
            get
            {
                object birthdate = currentContext.Session["Birthdate"];
                return (birthdate == null) ? default(DateTime) : (DateTime)birthdate;
            }
            set { currentContext.Session["Birthdate"] = value; }
        }


        // Login
        public bool LoginAdded
        {
            get
            {
                object loginAdded = currentContext.Session["LoginAdded"];
                return (loginAdded == null) ? default(bool) : (bool)loginAdded;
            }
            set { currentContext.Session["LoginAdded"] = value; }
        }

        public string Username
        {
            get
            {
                object username = currentContext.Session["Username"];
                return (username == null) ? default(string) : username.ToString();
            }
            set { currentContext.Session["Username"] = value; }
        }

        public string Password
        {
            get
            {
                object password = currentContext.Session["Password"];
                return (password == null) ? default(string) : password.ToString();
            }
            set { currentContext.Session["Password"] = value; }
        }

        // Creditcard
        public bool CreditcardAdded
        {
            get
            {
                object creditcardAdded = currentContext.Session["CreditcardAdded"];
                return (creditcardAdded == null) ? default(bool) : (bool)creditcardAdded;
            }
            set { currentContext.Session["CreditcardAdded"] = value; }
        }

        public string CardName
        {
            get
            {
                object cardName = currentContext.Session["CardName"];
                return (cardName == null) ? default(string) : cardName.ToString();
            }
            set { currentContext.Session["CardName"] = value; }
        }

        public int CardNumber
        {
            get
            {
                object cardNumber = currentContext.Session["CardNumber"];
                return (cardNumber == null) ? default(int) : Convert.ToInt32(cardNumber.ToString());
            }
            set { currentContext.Session["CardNumber"] = value; }
        }

        public DateTime CardExpiration
        {
            get
            {
                object cardExpiration = currentContext.Session["CardExpiration"];
                return (cardExpiration == null) ? default(DateTime) : (DateTime)cardExpiration;
            }
            set { currentContext.Session["CardExpiration"] = value; }
        }

        public int CardCode
        {
            get
            {
                object cardCode = currentContext.Session["CardCode"];
                return (cardCode == null) ? default(int) : Convert.ToInt32(cardCode.ToString());
            }
            set { currentContext.Session["CardCode"] = value; }
        }
    }
}