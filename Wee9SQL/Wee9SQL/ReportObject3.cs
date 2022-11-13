using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Wee9SQL
{
    public class ReportObject3
    {
        public string code, enrolled, complete, faildrop;

        public ReportObject3(string _code, string _enrolled, string _complete, string _faildrop)
        {
            code = _code;
            enrolled = _enrolled;
            complete = _complete;
            faildrop = _faildrop;
        }
    }
}
