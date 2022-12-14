using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FinalUI
{
    public class Logger //Thanks to Sebastian for explaning and teaching me how to do logging
    {
        public string StatusMessage;
        public int StatusCode;
        public DateTime StatusDate;

        public static List<Logger> Logs = new List<Logger>();

        public Logger(string message, int code, DateTime responseStatusDate)
        {
            this.StatusMessage = message;
            this.StatusCode = code;
            this.StatusDate = responseStatusDate;
        }

        public static void ExportLogsToFile(object sender, EventArgs e)
        {
            //Get the output path
            string outPath = $@"{Directory.GetParent(Directory.GetCurrentDirectory()).Parent.FullName}\Logs\LogReport.txt";

            //If the file exists in the output path, delete it
            if (File.Exists(outPath))
            {
                File.Delete(outPath);
            }

            //Streamwriter for writing the passed in logs
            using (StreamWriter sw = new StreamWriter(outPath, true))
            {
                //For every log, write it out on a new line
                foreach (var log in Logs)
                {
                    sw.WriteLine($"{log.StatusMessage}, {log.StatusCode}, {log.StatusDate}");
                }
            }
        }
    }
}
