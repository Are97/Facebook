using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Facebook.BD
{
    public class PersonaService
    {
        private readonly PersonaDataService _dataService;
        public PersonaService(string connectionString)
        {
            _dataService = new PersonaDataService(connectionString);
        }

        public void getidpersona()
        {
            // return _dataService.getidpersona();
        }
    }
}