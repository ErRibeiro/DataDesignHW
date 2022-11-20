using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Windows.Forms.DataVisualization;

namespace WEEK11Charts
{
    public partial class Form1 : Form
    {
        private Button NextChartButton;
        private System.Windows.Forms.DataVisualization.Charting.Chart mainChart;

        public Form1()
        {
            InitializeComponent();
        }
        private void InitializeComponent()
        {
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea1 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Legend legend1 = new System.Windows.Forms.DataVisualization.Charting.Legend();
            System.Windows.Forms.DataVisualization.Charting.Series series1 = new System.Windows.Forms.DataVisualization.Charting.Series();
            this.NextChartButton = new System.Windows.Forms.Button();
            this.mainChart = new System.Windows.Forms.DataVisualization.Charting.Chart();
            ((System.ComponentModel.ISupportInitialize)(this.mainChart)).BeginInit();
            this.SuspendLayout();
            // 
            // button1
            // 
            this.NextChartButton.Location = new System.Drawing.Point(46, 367);
            this.NextChartButton.Name = "Next Chart";
            this.NextChartButton.Size = new System.Drawing.Size(75, 23);
            this.NextChartButton.TabIndex = 0;
            this.NextChartButton.Text = "NextChart";
            this.NextChartButton.UseVisualStyleBackColor = true;
            this.NextChartButton.Click += new System.EventHandler(this.button1_Click_1);
            // 
            // chart1
            // 
            chartArea1.Name = "ChartArea1";
            this.mainChart.ChartAreas.Add(chartArea1);
            legend1.Name = "Legend1";
            this.mainChart.Legends.Add(legend1);
            this.mainChart.Location = new System.Drawing.Point(139, 90);
            this.mainChart.Name = "chart1";
            series1.ChartArea = "ChartArea1";
            series1.Legend = "Legend1";
            series1.Name = "Series1";
            this.mainChart.Series.Add(series1);
            this.mainChart.Size = new System.Drawing.Size(725, 300);
            this.mainChart.TabIndex = 1;
            this.mainChart.Text = "chart1";
            // 
            // Form1
            // 
            this.ClientSize = new System.Drawing.Size(1027, 454);
            this.Controls.Add(this.mainChart);
            this.Controls.Add(this.NextChartButton);
            this.Name = "Form1";
            ((System.ComponentModel.ISupportInitialize)(this.mainChart)).EndInit();
            this.ResumeLayout(false);

        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            mainChart.Series.Clear();
            mainChart.ChartAreas.Clear();

            mainChart.Titles.Add("Monster Data");
            mainChart.Size = new Size(720,500);

            var Area1 = mainChart.ChartAreas.Add("Area1");
            Area1.AxisX.Title = "Monster ID";
            Area1.AxisY.Title = "MP";
            Area1.AxisX.TitleAlignment = StringAlignment.Center;
            Area1.AxisY.TitleAlignment = StringAlignment.Center;

            var Series1 = mainChart.Series.Add("S1");
            Series1.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Line;
            Series1.IsValueShownAsLabel = true;

            Series1.Points.Add(,);
        }
    }
}
