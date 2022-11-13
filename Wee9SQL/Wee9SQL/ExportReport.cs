using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Wee9SQL
{
    public class ExportReport
    {
        public List<ReportObject1> r1 = new List<ReportObject1>();
        public List<ReportObject2> r2 = new List<ReportObject2>();
        public List<ReportObject3> r3 = new List<ReportObject3>();
        public List<ReportObject4> r4 = new List<ReportObject4>();
        public string n;

        public ExportReport(List<ReportObject1> report, string reportName)
        {
            r1 = report;
            n = reportName;
        }
        public ExportReport(List<ReportObject2> report, string reportName)
        {
            r2 = report;
            n = reportName;
        }
        public ExportReport(List<ReportObject3> report, string reportName)
        {
            r3 = report;
            n = reportName;
        }
        public ExportReport(List<ReportObject4> report, string reportName)
        {
            r4 = report;
            n = reportName;
        }
        public void ExportReport1()
        {
            using (StreamWriter sw = new StreamWriter(MakeName()))
            {
                    for (int i = 0; i < r1.Count(); i++)
                    {
                    sw.WriteLine($"{r1[i].id}|{r1[i].name}|{r1[i].ssn}|{r1[i].address}|{r1[i].phone}");
                    }
            }
        }
        public void ExportReport2()
        {
            using (StreamWriter sw = new StreamWriter(MakeName()))
            {
                for (int i = 0; i < r2.Count(); i++)
                {
                    sw.WriteLine($"{r2[i].id}|{r2[i].name}|{r2[i].total}|{r2[i].incomplete}|{r2[i].complete}|{r2[i].progress}");
                }
            }
        }
        public void ExportReport3()
        {
            using (StreamWriter sw = new StreamWriter(MakeName()))
            {
                for (int i = 0; i < r3.Count(); i++)
                {
                    sw.WriteLine($"{r3[i].code}|{r3[i].complete}|{r3[i].faildrop}|{r3[i].enrolled}");
                }
            }
        }
        public void ExportReport4()
        {
            using (StreamWriter sw = new StreamWriter(MakeName()))
            {
                for (int i = 0; i < r4.Count(); i++)
                {
                    sw.WriteLine($"{r4[i].code}|{r4[i].ids}|{r4[i].state}");
                }
            }
        }

        private string MakeName()
        {
            string name = @"..\..\..\Reports\";
            name += $"{n}_OUT.txt";
            return name;
        }
    }
}
