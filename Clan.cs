using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication6
{
    public class Clan
    {
        public int id { get; set; }
        public string Ime { get; set; }
        public string prezime { get; set; }
        public string kontakt {get;set;}
        public string broj_telefona { get; set; }
        public string grad { get; set; }

        public Clan() { }

        
    }
}