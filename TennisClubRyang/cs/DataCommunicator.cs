using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


namespace TennisClubRyang.cs
{
    public class DataCommunicator
    {
        private readonly string testConnectionString = @"Data Source=MOBILE-ORBIT\SQL2019;Initial Catalog=TennisClubRyang;Persist Security Info=True;User ID=TennisClubRyangWebApp;Password=Kode1234!";
        private readonly SqlConnectionStringBuilder tennisClubRyangWebApp = new SqlConnectionStringBuilder();

        public DataCommunicator()
        {
            tennisClubRyangWebApp.DataSource = @"MOBILE-ORBIT\SQL2019";
            tennisClubRyangWebApp.InitialCatalog = "TennisClubRyang";
            tennisClubRyangWebApp.PersistSecurityInfo = true;
            tennisClubRyangWebApp.UserID = "TennisClubRyangWebApp";
            tennisClubRyangWebApp.Password = "Kode1234!";
        }

        public int InsertUser(string fullName, string addressRoad, string addressNr, string addressPostalCode, string addressCity, string phoneNr, string email, DateTime birthdate)
        {
            int userID = 0;

            //SqlConnection sqlCon = new SqlConnection(tennisClubRyangWebApp.ConnectionString);
            SqlConnection sqlCon = new SqlConnection(testConnectionString);

            SqlCommand command = new SqlCommand("InsertUser", sqlCon)
            {
                CommandType = CommandType.StoredProcedure
            };

            command.Parameters.Add("@FullName", SqlDbType.VarChar).Value = fullName;
            command.Parameters.Add("@AddressRoad", SqlDbType.VarChar).Value = addressRoad;
            command.Parameters.Add("@AddressNr", SqlDbType.VarChar).Value = addressNr;
            command.Parameters.Add("@AddressPostalCode", SqlDbType.VarChar).Value = addressPostalCode;
            command.Parameters.Add("@AddressCity", SqlDbType.VarChar).Value = addressCity;
            command.Parameters.Add("@PhoneNr", SqlDbType.VarChar).Value = phoneNr;
            command.Parameters.Add("@Email", SqlDbType.VarChar).Value = email;
            command.Parameters.Add("@Birthdate", SqlDbType.Date).Value = birthdate;

            command.Parameters.Add("@newUserID", SqlDbType.Int);
            command.Parameters["@newUserID"].Direction = ParameterDirection.Output;

            sqlCon.Open();

            command.ExecuteNonQuery();

            userID = Convert.ToInt32(command.Parameters["@newUserID"].Value);

            sqlCon.Close();
            command.Dispose();

            return userID;
        }

        public void InsertCreditcard(int id, string cardName, int cardNum, DateTime cardExp, int cardCode)
        {
            //SqlConnection sqlCon = new SqlConnection(tennisClubRyangWebApp.ConnectionString);
            SqlConnection sqlCon = new SqlConnection(testConnectionString);

            SqlCommand command = new SqlCommand("InsertCreditcard", sqlCon)
            {
                CommandType = CommandType.StoredProcedure
            };

            command.Parameters.Add("@ID", SqlDbType.Int).Value = id;
            command.Parameters.Add("@CardName", SqlDbType.VarChar).Value = cardName;
            command.Parameters.Add("@CardNumber", SqlDbType.Int).Value = cardNum;
            command.Parameters.Add("@CardExpiration", SqlDbType.Date).Value = cardExp;
            command.Parameters.Add("@CardCode", SqlDbType.Int).Value = cardCode;

            sqlCon.Open();

            command.ExecuteNonQuery();

            sqlCon.Close();
            command.Dispose();
        }

        public void InsertLogin(int id, string username, string password)
        {
            //SqlConnection sqlCon = new SqlConnection(tennisClubRyangWebApp.ConnectionString);
            SqlConnection sqlCon = new SqlConnection(testConnectionString);

            SqlCommand command = new SqlCommand("InsertLogin", sqlCon)
            {
                CommandType = CommandType.StoredProcedure
            };

            command.Parameters.Add("@ID", SqlDbType.Int).Value = id;
            command.Parameters.Add("@Username", SqlDbType.VarChar).Value = username;
            command.Parameters.Add("@Password", SqlDbType.Int).Value = password;
            sqlCon.Open();

            command.ExecuteNonQuery();

            sqlCon.Close();
            command.Dispose();
        }
    }
}