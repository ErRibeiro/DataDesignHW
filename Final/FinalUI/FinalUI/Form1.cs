using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Windows.Forms.DataVisualization.Charting;


namespace FinalUI
{
    public partial class Form1 : Form
    {
        public string adv;
        public string dis;
        public string immune;
        public int maxpokemon;
        public Form1()
        {
            InitializeComponent();
            GetAllPokemon(AllPokemonBox);
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        

        private void button1_Click(object sender, EventArgs e)
        {
            Clear();
            adv = "";
            dis = "";
            immune = "";

            GetMatchUps(Poke1Box.Text);

            GetMatchUps(Poke2Box.Text);

            GetMatchUps(Poke3Box.Text);

            GetMatchUps(Poke4Box.Text);

            GetMatchUps(Poke5Box.Text);
            
            GetMatchUps(Poke6Box.Text);

            OutPutBox.Text = $"Types Not Covered : {Environment.NewLine}{CompareMatchups()}";
            
        }

        string CompareMatchups() 
        {
            adv = adv.Replace(" ",",");
            List<string> ad;
            ad = adv.Split(',').ToList();

            dis = dis.Replace(" ", ",");
            List<string> di;
            di = dis.Split(',').ToList();

            immune = immune.Replace(" ", ",");
            List<string> im;
            im = immune.Split(',').ToList();

            di = di.Distinct().ToList();
            ad = ad.Distinct().ToList();
            foreach (var item in ad)
            {
                if (di.Contains(item) || im.Contains(item))
                {
                    di.Remove(item);
                }
            }
            string teamDis = "";
            foreach (var item in di)
            {
                teamDis += item+" ";
            }

            panel1.Controls.Add(chart1);
            chart1.Titles.Add($"Type Not Covered");
            chart1.Size = new Size(panel1.Width, panel1.Height);
            var chartLegend = chart1.ChartAreas.Add("chartLegend");
            chartLegend.AxisX.TitleAlignment = StringAlignment.Center;
            chartLegend.AxisY.TitleAlignment = StringAlignment.Center;
            chartLegend.AxisX.Interval = 0;
            var Series = chart1.Series.Add("Stats");
            Series.ChartType = SeriesChartType.Pie;
            Series.IsValueShownAsLabel = false;
            Series.BorderWidth = 3;
            chartLegend.AxisX.Maximum = 160;
            chartLegend.AxisY.Maximum = 160;

            foreach (var item in di)
            {
                Series.Points.AddXY(item,1);
            }
            

            return teamDis;
        }

        async void GetAllPokemon(TextBox txtbox)
        {
            try
            {
                using (HttpClient client = new HttpClient())
                {
                    client.BaseAddress = new Uri("https://localhost:7021/api/Pokemon/");
                    client.DefaultRequestHeaders.Accept.Clear();
                    client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

                    HttpResponseMessage response = client.GetAsync($"get-all").Result;
                    List<PokedexFormat> poke = JsonConvert.DeserializeObject<List<PokedexFormat>>(await response.Content.ReadAsStringAsync());
                    string nl = Environment.NewLine;
                    foreach (var item in poke)
                    {
                        txtbox.Text += $"ID: {item.ID} {nl}Name: {item.Name}{nl}";
                    }
                    maxpokemon = poke.Count();
                    Logger.Logs.Add(new Logger($"Get All Pokemon: {response.StatusCode}", (int)response.StatusCode, DateTime.Now));
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        async void GetStatsById(string id)
        {
            int result = 0;
            if (Int32.TryParse(id, out result) == true && Int32.Parse(id) > maxpokemon || Int32.TryParse(id, out result) == true && result <= 0)
            {
                MessageBox.Show("Value is greater or lower then pokedex capacity.");
            }
            else if (Int32.TryParse(id, out result) == false && id != "")
            {
                MessageBox.Show("Value needs to be an integer.");
            }
            else if (Int32.TryParse(id, out result) == true && Int32.Parse(id) < maxpokemon && Int32.Parse(id) > 0)
            {
                try
                {
                    using (HttpClient client = new HttpClient())
                    {
                        client.BaseAddress = new Uri("https://localhost:7021/api/Pokemon/");
                        client.DefaultRequestHeaders.Accept.Clear();
                        client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

                        HttpResponseMessage response = client.GetAsync($"get-stats-by-id/{id}").Result;
                        PokemonStatsFormat stats = JsonConvert.DeserializeObject<PokemonStatsFormat>(await response.Content.ReadAsStringAsync());
                        string nl = Environment.NewLine;
                        if (stats != null)
                        {
                            //OutPutBox.Text = $"HP: {stats.HP} {nl}Atk: {stats.Atk}{nl}Sp.Atk: {stats.SpAtk}{nl}Def: {stats.Def}{nl}Sp.Def: {stats.SpDef}{nl}Speed: {stats.Speed}";
                            panel1.Controls.Add(chart1);
                            chart1.Titles.Add($"Pokemon #{id}");
                            chart1.Size = new Size(panel1.Width, panel1.Height);
                            var chartLegend = chart1.ChartAreas.Add("chartLegend");
                            chartLegend.AxisX.TitleAlignment = StringAlignment.Center;
                            chartLegend.AxisY.TitleAlignment = StringAlignment.Center;
                            chartLegend.AxisX.Interval = 0;
                            var Series = chart1.Series.Add("Stats");
                            Series.ChartType = SeriesChartType.Radar;
                            Series.IsValueShownAsLabel = true;
                            Series.BorderWidth = 3;
                            chartLegend.AxisX.Maximum = 160;
                            chartLegend.AxisY.Maximum = 160;
                            Series.Points.Add(stats.HP).Label = $"HP {stats.HP}";
                            Series.Points.Add(stats.SpAtk).Label = $"SpAtk {stats.SpAtk}";
                            Series.Points.Add(stats.SpDef).Label = $"SpDef {stats.SpDef}";
                            Series.Points.Add(stats.Speed).Label = $"Speed {stats.Speed}";
                            Series.Points.Add(stats.Def).Label = $"Def {stats.Def}";
                            Series.Points.Add(stats.Atk).Label = $"Atk {stats.Atk}";
                        }
                        Logger.Logs.Add(new Logger($"Get Stats By ID: {response.StatusCode}", (int)response.StatusCode, DateTime.Now));
                    }
                }

                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
        }

        async void GetMatchUps(string id)
        {
            int result = 0;
            if(Int32.TryParse(id, out result) == true && Int32.Parse(id) > maxpokemon || Int32.TryParse(id, out result) == true && result <= 0)
            {
                MessageBox.Show("Value is greater or lower then pokedex capacity.");
            }
            else if (Int32.TryParse(id, out result) == false && id != "")
            {
                MessageBox.Show("Value needs to be an integer.");
            }
            else if(Int32.TryParse(id, out result) == true && Int32.Parse(id) < maxpokemon && Int32.Parse(id) > 0)
            {
                try
                {
                    using (HttpClient client = new HttpClient())
                    {
                        client.BaseAddress = new Uri("https://localhost:7021/api/Pokemon/");
                        client.DefaultRequestHeaders.Accept.Clear();
                        client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

                        HttpResponseMessage response = client.GetAsync($"get-type-matchup-by-id/{id}").Result;
                        PokemonMatchUpsFormat poke = JsonConvert.DeserializeObject<PokemonMatchUpsFormat>(await response.Content.ReadAsStringAsync());
                        string nl = Environment.NewLine;

                        if (poke != null)
                        {
                            OutPutBox.Text += $"ID: {poke.ID} {nl}Advantages: {poke.Advantage}{nl}Disadvantages: {poke.Disadvantage}{nl}Immune: {poke.Immune}{nl}";
                            adv += poke.Advantage;
                            dis += poke.Disadvantage;
                        }
                        Logger.Logs.Add(new Logger($"Get MatchUps : {response.StatusCode}", (int)response.StatusCode, DateTime.Now));
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
        }

        async void GetLegendaryIDs()
        {
            try
            {
                using (HttpClient client = new HttpClient())
                {
                    client.BaseAddress = new Uri("https://localhost:7021/api/Pokemon/");
                    client.DefaultRequestHeaders.Accept.Clear();
                    client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

                    HttpResponseMessage response = client.GetAsync($"get-all-legendary").Result;
                    List<PokemonLegendaryFormat> poke = JsonConvert.DeserializeObject<List<PokemonLegendaryFormat>>(await response.Content.ReadAsStringAsync());
                    string nl = Environment.NewLine;
                    string output = "The legendary pokemon are : ";
                    foreach (var item in poke)
                    {
                        output += $"{item.ID} ";
                    }
                    OutPutBox.Text = output;
                    Logger.Logs.Add(new Logger($"Get Legendary IDs: {response.StatusCode}", (int)response.StatusCode, DateTime.Now));
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void Clear()
        {
            OutPutBox.Text = "";
            chart1.Series.Clear();
            chart1.Titles.Clear();
            chart1.ChartAreas.Clear();
            panel1.Controls.Clear();
        }

        private void Poke1Stats_Click(object sender, EventArgs e)
        {
            Clear();
            GetStatsById(Poke1Box.Text);
            GetMatchUps(Poke1Box.Text);
        }

        private void Poke2Stats_Click(object sender, EventArgs e)
        {
            Clear();
            GetStatsById(Poke2Box.Text);
            GetMatchUps(Poke2Box.Text);

        }

        private void Poke3Stats_Click(object sender, EventArgs e)
        {
            Clear();
            GetStatsById(Poke3Box.Text);
            GetMatchUps(Poke3Box.Text);
        }

        private void Poke4Stats_Click(object sender, EventArgs e)
        {
            Clear();
            GetStatsById(Poke4Box.Text);
            GetMatchUps(Poke4Box.Text);
        }

        private void Poke5Stats_Click(object sender, EventArgs e)
        {
            Clear();
            GetStatsById(Poke5Box.Text);
            GetMatchUps(Poke5Box.Text);
        }

        private void Poke6Stats_Click(object sender, EventArgs e)
        {
            Clear();
            GetStatsById(Poke6Box.Text);
            GetMatchUps(Poke6Box.Text);
        }

        private void FilterBtn_Click(object sender, EventArgs e)
        {
            Clear();
            GetLegendaryIDs();
        }
    }
}
