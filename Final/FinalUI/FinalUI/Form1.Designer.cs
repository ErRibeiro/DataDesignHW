namespace FinalUI
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;
        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea1 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Legend legend1 = new System.Windows.Forms.DataVisualization.Charting.Legend();
            System.Windows.Forms.DataVisualization.Charting.Series series1 = new System.Windows.Forms.DataVisualization.Charting.Series();
            this.button1 = new System.Windows.Forms.Button();
            this.Poke1Box = new System.Windows.Forms.TextBox();
            this.Poke3Box = new System.Windows.Forms.TextBox();
            this.Poke4Box = new System.Windows.Forms.TextBox();
            this.Poke2Box = new System.Windows.Forms.TextBox();
            this.Poke5Box = new System.Windows.Forms.TextBox();
            this.Poke6Box = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.Poke1Stats = new System.Windows.Forms.Button();
            this.Poke6Stats = new System.Windows.Forms.Button();
            this.Poke5Stats = new System.Windows.Forms.Button();
            this.Poke4Stats = new System.Windows.Forms.Button();
            this.Poke3Stats = new System.Windows.Forms.Button();
            this.Poke2Stats = new System.Windows.Forms.Button();
            this.OutPutBox = new System.Windows.Forms.TextBox();
            this.AllPokemonBox = new System.Windows.Forms.TextBox();
            this.chart1 = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.panel1 = new System.Windows.Forms.Panel();
            this.FilterBtn = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.chart1)).BeginInit();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(83, 192);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(163, 48);
            this.button1.TabIndex = 0;
            this.button1.Text = "Check Team Matchups";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // Poke1Box
            // 
            this.Poke1Box.Location = new System.Drawing.Point(115, 12);
            this.Poke1Box.MaxLength = 3;
            this.Poke1Box.Name = "Poke1Box";
            this.Poke1Box.Size = new System.Drawing.Size(100, 22);
            this.Poke1Box.TabIndex = 1;
            // 
            // Poke3Box
            // 
            this.Poke3Box.Location = new System.Drawing.Point(115, 68);
            this.Poke3Box.MaxLength = 3;
            this.Poke3Box.Name = "Poke3Box";
            this.Poke3Box.Size = new System.Drawing.Size(100, 22);
            this.Poke3Box.TabIndex = 3;
            // 
            // Poke4Box
            // 
            this.Poke4Box.Location = new System.Drawing.Point(115, 96);
            this.Poke4Box.MaxLength = 3;
            this.Poke4Box.Name = "Poke4Box";
            this.Poke4Box.Size = new System.Drawing.Size(100, 22);
            this.Poke4Box.TabIndex = 4;
            // 
            // Poke2Box
            // 
            this.Poke2Box.Location = new System.Drawing.Point(115, 40);
            this.Poke2Box.MaxLength = 3;
            this.Poke2Box.Name = "Poke2Box";
            this.Poke2Box.Size = new System.Drawing.Size(100, 22);
            this.Poke2Box.TabIndex = 2;
            // 
            // Poke5Box
            // 
            this.Poke5Box.Location = new System.Drawing.Point(115, 124);
            this.Poke5Box.MaxLength = 3;
            this.Poke5Box.Name = "Poke5Box";
            this.Poke5Box.Size = new System.Drawing.Size(100, 22);
            this.Poke5Box.TabIndex = 5;
            // 
            // Poke6Box
            // 
            this.Poke6Box.Location = new System.Drawing.Point(115, 152);
            this.Poke6Box.MaxLength = 3;
            this.Poke6Box.Name = "Poke6Box";
            this.Poke6Box.Size = new System.Drawing.Size(100, 22);
            this.Poke6Box.TabIndex = 6;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(15, 15);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(82, 16);
            this.label1.TabIndex = 7;
            this.label1.Text = "Pokemon #1";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(15, 158);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(82, 16);
            this.label2.TabIndex = 8;
            this.label2.Text = "Pokemon #6";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(15, 130);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(82, 16);
            this.label3.TabIndex = 9;
            this.label3.Text = "Pokemon #5";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(15, 102);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(82, 16);
            this.label4.TabIndex = 10;
            this.label4.Text = "Pokemon #4";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(15, 71);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(82, 16);
            this.label5.TabIndex = 11;
            this.label5.Text = "Pokemon #3";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(15, 43);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(82, 16);
            this.label6.TabIndex = 12;
            this.label6.Text = "Pokemon #2";
            // 
            // Poke1Stats
            // 
            this.Poke1Stats.Location = new System.Drawing.Point(221, 11);
            this.Poke1Stats.Name = "Poke1Stats";
            this.Poke1Stats.Size = new System.Drawing.Size(130, 23);
            this.Poke1Stats.TabIndex = 13;
            this.Poke1Stats.Text = "Check Pokemon";
            this.Poke1Stats.UseVisualStyleBackColor = true;
            this.Poke1Stats.Click += new System.EventHandler(this.Poke1Stats_Click);
            // 
            // Poke6Stats
            // 
            this.Poke6Stats.Location = new System.Drawing.Point(221, 153);
            this.Poke6Stats.Name = "Poke6Stats";
            this.Poke6Stats.Size = new System.Drawing.Size(130, 23);
            this.Poke6Stats.TabIndex = 14;
            this.Poke6Stats.Text = "Check Pokemon";
            this.Poke6Stats.UseVisualStyleBackColor = true;
            this.Poke6Stats.Click += new System.EventHandler(this.Poke6Stats_Click);
            // 
            // Poke5Stats
            // 
            this.Poke5Stats.Location = new System.Drawing.Point(221, 124);
            this.Poke5Stats.Name = "Poke5Stats";
            this.Poke5Stats.Size = new System.Drawing.Size(130, 23);
            this.Poke5Stats.TabIndex = 15;
            this.Poke5Stats.Text = "Check Pokemon";
            this.Poke5Stats.UseVisualStyleBackColor = true;
            this.Poke5Stats.Click += new System.EventHandler(this.Poke5Stats_Click);
            // 
            // Poke4Stats
            // 
            this.Poke4Stats.Location = new System.Drawing.Point(221, 95);
            this.Poke4Stats.Name = "Poke4Stats";
            this.Poke4Stats.Size = new System.Drawing.Size(130, 23);
            this.Poke4Stats.TabIndex = 16;
            this.Poke4Stats.Text = "Check Pokemon";
            this.Poke4Stats.UseVisualStyleBackColor = true;
            this.Poke4Stats.Click += new System.EventHandler(this.Poke4Stats_Click);
            // 
            // Poke3Stats
            // 
            this.Poke3Stats.Location = new System.Drawing.Point(221, 67);
            this.Poke3Stats.Name = "Poke3Stats";
            this.Poke3Stats.Size = new System.Drawing.Size(130, 23);
            this.Poke3Stats.TabIndex = 17;
            this.Poke3Stats.Text = "Check Pokemon";
            this.Poke3Stats.UseVisualStyleBackColor = true;
            this.Poke3Stats.Click += new System.EventHandler(this.Poke3Stats_Click);
            // 
            // Poke2Stats
            // 
            this.Poke2Stats.Location = new System.Drawing.Point(221, 39);
            this.Poke2Stats.Name = "Poke2Stats";
            this.Poke2Stats.Size = new System.Drawing.Size(130, 23);
            this.Poke2Stats.TabIndex = 18;
            this.Poke2Stats.Text = "Check Pokemon";
            this.Poke2Stats.UseVisualStyleBackColor = true;
            this.Poke2Stats.Click += new System.EventHandler(this.Poke2Stats_Click);
            // 
            // OutPutBox
            // 
            this.OutPutBox.AccessibleName = "outputbox";
            this.OutPutBox.Location = new System.Drawing.Point(18, 255);
            this.OutPutBox.Multiline = true;
            this.OutPutBox.Name = "OutPutBox";
            this.OutPutBox.ReadOnly = true;
            this.OutPutBox.Size = new System.Drawing.Size(305, 157);
            this.OutPutBox.TabIndex = 19;
            // 
            // AllPokemonBox
            // 
            this.AllPokemonBox.AccessibleName = "outputbox";
            this.AllPokemonBox.Location = new System.Drawing.Point(380, 11);
            this.AllPokemonBox.Multiline = true;
            this.AllPokemonBox.Name = "AllPokemonBox";
            this.AllPokemonBox.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.AllPokemonBox.Size = new System.Drawing.Size(192, 542);
            this.AllPokemonBox.TabIndex = 20;
            // 
            // chart1
            // 
            chartArea1.Name = "ChartArea1";
            this.chart1.ChartAreas.Add(chartArea1);
            legend1.Name = "Legend1";
            this.chart1.Legends.Add(legend1);
            this.chart1.Location = new System.Drawing.Point(3, 4);
            this.chart1.Name = "chart1";
            series1.ChartArea = "ChartArea1";
            series1.Legend = "Legend1";
            series1.Name = "Series1";
            this.chart1.Series.Add(series1);
            this.chart1.Size = new System.Drawing.Size(604, 300);
            this.chart1.TabIndex = 21;
            this.chart1.Text = "chart1";
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.chart1);
            this.panel1.Location = new System.Drawing.Point(578, 11);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(871, 542);
            this.panel1.TabIndex = 22;
            // 
            // FilterBtn
            // 
            this.FilterBtn.Location = new System.Drawing.Point(83, 430);
            this.FilterBtn.Name = "FilterBtn";
            this.FilterBtn.Size = new System.Drawing.Size(176, 48);
            this.FilterBtn.TabIndex = 23;
            this.FilterBtn.Text = "Legendary IDs";
            this.FilterBtn.UseVisualStyleBackColor = true;
            this.FilterBtn.Click += new System.EventHandler(this.FilterBtn_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1495, 565);
            this.Controls.Add(this.FilterBtn);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.AllPokemonBox);
            this.Controls.Add(this.OutPutBox);
            this.Controls.Add(this.Poke2Stats);
            this.Controls.Add(this.Poke3Stats);
            this.Controls.Add(this.Poke4Stats);
            this.Controls.Add(this.Poke5Stats);
            this.Controls.Add(this.Poke6Stats);
            this.Controls.Add(this.Poke1Stats);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.Poke6Box);
            this.Controls.Add(this.Poke5Box);
            this.Controls.Add(this.Poke2Box);
            this.Controls.Add(this.Poke4Box);
            this.Controls.Add(this.Poke3Box);
            this.Controls.Add(this.Poke1Box);
            this.Controls.Add(this.button1);
            this.Name = "Form1";
            this.Text = "Form1";
            ((System.ComponentModel.ISupportInitialize)(this.chart1)).EndInit();
            this.panel1.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.TextBox Poke1Box;
        private System.Windows.Forms.TextBox Poke3Box;
        private System.Windows.Forms.TextBox Poke4Box;
        private System.Windows.Forms.TextBox Poke2Box;
        private System.Windows.Forms.TextBox Poke5Box;
        private System.Windows.Forms.TextBox Poke6Box;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Button Poke1Stats;
        private System.Windows.Forms.Button Poke6Stats;
        private System.Windows.Forms.Button Poke5Stats;
        private System.Windows.Forms.Button Poke4Stats;
        private System.Windows.Forms.Button Poke3Stats;
        private System.Windows.Forms.Button Poke2Stats;
        private System.Windows.Forms.TextBox OutPutBox;
        private System.Windows.Forms.TextBox AllPokemonBox;
        private System.Windows.Forms.DataVisualization.Charting.Chart chart1;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button FilterBtn;
    }
}

