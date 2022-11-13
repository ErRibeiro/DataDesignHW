using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Wee9SQL
{
    public class ReportObject2
    {
        public string name, id, complete, incomplete, progress, total;

        public ReportObject2(string _id,string _name ,string _complete, string _incomplete, string _progress, string _total)
        {
            name = _name;
            id = _id;
            complete = _complete;
            incomplete = _incomplete;
            progress = _progress;
            total = _total;
        }
    }
}
