using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Reflection;

namespace Inclassfinal
{
    internal class ReadDataClass
    {
        string path;
        List<string> rawData = new List<string>();
        public List<PData> dataP = new List<PData>();
        public List<PFData> dataPF = new List<PFData>();
        List<string> split = new List<string> ();
        public void ReadData()
        {
            path = $"{Path.GetDirectoryName(Assembly.GetEntryAssembly().Location)}/../../../Data/passenger_data.csv";
            try
            {
                using (StreamReader reader = new StreamReader(path))
                {
                    string line;
                    while ((line = reader.ReadLine()) != null)
                    {
                        rawData.Add(line);
                    }
                }
            }
            catch (Exception)
            {
                throw;
            }
        }
        public void MakePDATA()
        {
            rawData.RemoveAt(0);
            foreach (var item in rawData)
            {
                split = item.Split(",").ToList();
                dataP.Add(new PData(split[0], split[1], split[2], split[3]));
                dataPF.Add(new PFData(split[0], split[4], split[5], split[6], split[7]));

            }
        }
    }
}
