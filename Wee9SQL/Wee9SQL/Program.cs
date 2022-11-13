// See https://aka.ms/new-console-template for more information
using Wee9SQL;

DataBase w = new DataBase();
ExportReport er;
w.Connect();
w.Report1();
er = new ExportReport(w.r1, w.SPname);

er.ExportReport1();
w.WriteTableOne();
/////////////////////////

w.Report2();

er = new ExportReport(w.r2, w.SPname);
er.ExportReport2();
w.WriteTableTwo();

///////////////////////////



w.Report3();
er = new ExportReport(w.r3, w.SPname);
er.ExportReport3();
w.WriteTableThree();

///////////////////////////
w.Report4();
er = new ExportReport(w.r4, w.SPname);
er.ExportReport4();
w.WriteTableFour();


// Credits to Duncan for helping me with sql procedures.
