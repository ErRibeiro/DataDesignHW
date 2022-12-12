// See https://aka.ms/new-console-template for more information
using Inclassfinal;

ReadDataClass read = new ReadDataClass();
read.ReadData();
read.MakePDATA();

Database db = new Database();
db.Connect();
//db.InsertPassangerData(read.dataP);
//db.InsertPassangerFlightData(read.dataPF);