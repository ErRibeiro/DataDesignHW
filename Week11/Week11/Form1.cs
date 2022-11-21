using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Windows.Forms.DataVisualization.Charting;

namespace Week11
{
    public partial class Form1 : Form
    {
        Charts c = new Charts();
        public Form1()
        {
            InitializeComponent();
            Clear();
            c.Connect();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {
            Clear();
            panel1.Controls.Add(chart3);
            chart3.Titles.Add("Top 10 monsters by HP then MP");
            chart3.Size = new Size(panel1.Width, panel1.Height);
            var chartLegend = chart3.ChartAreas.Add("chartLegend");
            chartLegend.AxisX.Title = "MP";
            chartLegend.AxisY.Title = "HP";
            chartLegend.AxisX.TitleAlignment = StringAlignment.Center;
            chartLegend.AxisY.TitleAlignment = StringAlignment.Center;
            chartLegend.AxisY.Minimum = 985;
            chartLegend.AxisY.Maximum = 1000;
            chartLegend.AxisX.Minimum = 0;
            chartLegend.AxisX.Interval = 50;
            chartLegend.AxisY.Interval = 5;
            var Series = chart3.Series.Add("Monster");
            Series.ChartType = SeriesChartType.Point;
            Series.IsValueShownAsLabel = true;
            Series.BorderWidth = 3;
            var list = c.GetChartThree();
            foreach (var i in list)
            {
                Series.Points.AddXY(i.MP, i.HP);
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Clear();
            panel1.Controls.Add(chart2);
            chart2.Titles.Add("Monsters by HP");
            chart2.Size = new Size(panel1.Width, panel1.Height);
            var chartLegend = chart2.ChartAreas.Add("chartLegend");
            chartLegend.AxisX.Title = "HP";
            chartLegend.AxisY.Title = "MonsterCount";
            chartLegend.AxisX.TitleAlignment = StringAlignment.Center;
            chartLegend.AxisY.TitleAlignment = StringAlignment.Center;
            chartLegend.AxisX.Interval = 1;
            var Series = chart2.Series.Add("Number of Monsters");
            Series.ChartType = SeriesChartType.Pie;
            Series.IsValueShownAsLabel = true;
            Series.BorderWidth = 3;
            var list = c.Chart2Data();
            //I didn't know what to do here and Sebastian really helped me because I forgot about Dictionary. Credits to Sebastian
            Dictionary<string, int> hpDiv = new Dictionary<string, int>();
            hpDiv.Add("0-200", list.Where(m => m.HP <= 200).Sum(m => m.count));
            hpDiv.Add("201-400", list.Where(m => m.HP > 200 && m.HP <= 400).Sum(m => m.count));
            hpDiv.Add("401-600", list.Where(m => m.HP > 400 && m.HP <= 600).Sum(m => m.count));
            hpDiv.Add("601-800", list.Where(m => m.HP > 600 && m.HP <= 800).Sum(m => m.count));
            hpDiv.Add("801-1000", list.Where(m => m.HP > 800 && m.HP <= 1000).Sum(m => m.count));

            foreach (var i in hpDiv)
            {
                Series.Points.AddXY(i.Key, i.Value);
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Clear();
            panel1.Controls.Add(chart1);
            chart1.Titles.Add("Monsters by State");
            chart1.Size = new Size(panel1.Width, panel1.Height);
            var chartlegend = chart1.ChartAreas.Add("chartLegend");
            chartlegend.AxisX.Title = "State";
            chartlegend.AxisY.Title = "MonsterCount";
            chartlegend.AxisX.TitleAlignment = StringAlignment.Center;
            chartlegend.AxisY.TitleAlignment = StringAlignment.Center;
            chartlegend.AxisX.Interval = 1;
            var Series = chart1.Series.Add("Number of Monsters");
            Series.ChartType = SeriesChartType.Line;
            Series.IsValueShownAsLabel = true;
            Series.BorderWidth = 3;
            var list = c.Chart1Data();
            foreach (var i in list)
            {
                Series.Points.AddXY(i.state, i.count);
            }
        }

        private void Clear()
        {
            chart1.Series.Clear();
            chart1.Titles.Clear();
            chart1.ChartAreas.Clear();
            chart2.Series.Clear();
            chart2.Titles.Clear();
            chart2.ChartAreas.Clear();
            chart3.Series.Clear();
            chart3.Titles.Clear();
            chart3.ChartAreas.Clear();
            panel1.Controls.Clear();
        }
    }
}
