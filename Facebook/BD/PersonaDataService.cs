using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Facebook.BD
{
    public class PersonaDataService
    {
        private readonly SqlClient _client;

        public PersonaDataService(string connectionString)
        {
            _client = new SqlClient(connectionString);
            return;
        }

        public void getidpersona()
        {
            int result = 0;
            try
            {
                if (_client.Open())
                {
                    var command = new SqlCommand
                    {
                        Connection = _client.Conecction,
                        CommandText = "getidpersona",
                        CommandType = CommandType.StoredProcedure
                    };
                    var dataReader = command.ExecuteReader();
                    while (dataReader.Read())
                    {

                    }
                    Console.WriteLine("Estamos conectados");
                }
            }
            catch
            {

            }
            finally
            {
                _client.Close();
            }
        }
    }
}