using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Wee9SQL
{
    public class ReportObject1
    {
        public string name, id, ssn, address, phone;

        public ReportObject1(string _name, string _id, string _ssn, string _add, string _phone)
        {
            name = _name;
            id = _id;
            ssn = _ssn;
            address = _add;
            phone = _phone;
        }
    }
}
