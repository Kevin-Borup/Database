﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TennisClubRyang.cs
{
    public class ProcessHandler
    {
        // Validates data before inserting into session.

        UserProfile profile;
        DataCommunicator communicator;

        public ProcessHandler()
        {
            profile = new UserProfile();
            communicator = new DataCommunicator();
        }

        public bool SendProfileToSession(string fullName, string addressRoad, string addressNr, string addressPostalCode, string addressCity, string phoneNr, string email, DateTime birthdate)
        {
            //Validate values here before saving in session.
            bool validated = false;
            //  UserData
            //      Name
            //      Address : Road, Nr, PostalCode, City
            //      PhoneNr
            //      Email
            //      Birthdate

            profile.FullName = fullName;
            profile.AddressRoad = addressRoad;
            profile.AddressNr = addressNr;
            profile.AddressPostalCode = addressPostalCode;
            profile.AddressCity = addressCity;
            profile.PhoneNr = phoneNr;
            profile.Email = email;
            profile.Birthdate = birthdate;

            validated = true;

            return validated;
        }

        public bool SendLoginToSession(string username, string password)
        {
            //Validate values here before saving in session.
            bool validated = false;

            profile.Username = username;
            profile.Password = password;

            validated = true;

            if (validated)
            {
                profile.LoginAdded = true;
            }

            return validated;
        }

        public bool SendCreditcardToSession(string cardName, string cardNumber, DateTime cardExp, string cardCode)
        {
            //Validate values here before saving in session.
            bool validated = false;

            int convertedCardNumber = Convert.ToInt32(cardNumber);
            int convertedCardCode = Convert.ToInt32(cardCode);

            profile.CardName = cardName;
            profile.CardNumber = convertedCardNumber;
            profile.CardExpiration = cardExp;
            profile.CardCode = convertedCardCode;

            validated = true;

            if (validated)
            {
                profile.CreditcardAdded = true;
            }

            return validated;
        }

        private void ValidateData()
        {

        }

        private void ValidateCreditcard()
        {
            //Validate Creditcard

        }

        public void SendProfileToDatabase()
        {
            //Values are already validated, send to database
            profile.UserID = communicator.InsertUser(profile.FullName, profile.AddressRoad, profile.AddressNr, profile.AddressPostalCode, profile.AddressCity, profile.PhoneNr, profile.Email, profile.Birthdate);
        }

        public void SendLoginToDatabase()
        {
            //Values are already validated, send to database
            communicator.InsertLogin(profile.UserID, profile.Username, profile.Password);
        }

        public void SendCreditcardToDatabase()
        {
            //Values are already validated, send to database
            communicator.InsertCreditcard(profile.UserID, profile.CardName, profile.CardNumber, profile.CardExpiration, profile.CardCode);
        }
    }
}