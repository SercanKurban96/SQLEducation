using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Proje_SQL_DB
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        SqlConnection baglanti = new SqlConnection("Data Source=SERCAN\\SQLEXPRESS;Initial Catalog=SatisVT;Integrated Security=True;Encrypt=False");
        private void btnCikis_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void btnKategoriler_Click(object sender, EventArgs e)
        {
            FrmKategoriler fr = new FrmKategoriler();
            fr.Show();
        }

        private void btnMusteriler_Click(object sender, EventArgs e)
        {
            FrmMusteri fr = new FrmMusteri();
            fr.Show();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            //Ürünlerin Durum Seviyesi
            SqlCommand komut = new SqlCommand("Execute TEST4", baglanti);
            SqlDataAdapter da = new SqlDataAdapter(komut);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dgvKritikStoktakiUrunler.DataSource = dt;

            //Grafiğe Veri Çekme

            //chart1.Series["Akdeniz"].Points.AddXY("Adana", 24);
            //chart1.Series["Akdeniz"].Points.AddXY("Isparta", 21);

            baglanti.Open();
            SqlCommand komut2 = new SqlCommand("select KATEGORIAD,COUNT(*) FROM TBLKATEGORI INNER JOIN TBLURUNLER ON TBLKATEGORI.KATEGORIID=TBLURUNLER.KATEGORI GROUP BY KATEGORIAD", baglanti);
            SqlDataReader dr = komut2.ExecuteReader();
            while (dr.Read())
            {
                chart1.Series["Kategoriler"].Points.AddXY(dr[0], dr[1]);
            }
            baglanti.Close();

            //Grafiğe Veri Çekme 2
            baglanti.Open();
            SqlCommand komut3 = new SqlCommand("select MUSTERISEHIR,COUNT(*) FROM TBLMUSTERI GROUP BY MUSTERISEHIR", baglanti);
            SqlDataReader dr2 = komut3.ExecuteReader();
            while (dr2.Read())
            {
                chart2.Series["Sehirler"].Points.AddXY(dr2[0], dr2[1]);
            }
            baglanti.Close();
        }
    }
}
