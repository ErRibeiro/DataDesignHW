using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Inclassfinal
{
    internal class PData
    {
        //spInsertTableData
        public int ID;
        public string FName, LName, email;

        public PData(string _id, string _fname, string _lname, string _email)
        {
            ID = Int32.Parse(_id);
            FName = _fname; 
            LName = _lname;
            email = _email;
        }
    }
}
