using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace Proje_SQL_DB
{
    public partial class FrmKategoriler : Form
    {
        public FrmKategoriler()
        {
            InitializeComponent();
        }
        SqlConnection baglanti = new SqlConnection("Data Source=SERCAN\\SQLEXPRESS;Initial Catalog=SatisVT;Integrated Security=True;Encrypt=False");

        void Listele()
        {
            SqlCommand komut = new SqlCommand("select * from TBLKATEGORI", baglanti);
            SqlDataAdapter da = new SqlDataAdapter(komut);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dgvKategoriler.DataSource = dt;
        }

        void Temizle()
        {
            txtKategoriID.Clear();
            txtKategoriAd.Clear();
        }

        private void btnListele_Click(object sender, EventArgs e)
        {
            Listele();
        }

        private void btnKaydet_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("insert into TBLKATEGORI (KATEGORIAD) values (@p1)", baglanti);
            komut.Parameters.AddWithValue("@p1", txtKategoriAd.Text);
            komut.ExecuteNonQuery();
            baglanti.Close();
            MessageBox.Show("Kategori Kaydetme İşlemi Başarıyla Gerçekleşti", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);
            Listele();
            Temizle();
        }

        private void btnSil_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("delete from TBLKATEGORI where KATEGORIID=@p1", baglanti);
            komut.Parameters.AddWithValue("@p1", txtKategoriID.Text);
            komut.ExecuteNonQuery();
            baglanti.Close();
            MessageBox.Show("Kategori Silme İşlemi Başarıyla Gerçekleşti", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);
            Listele();
            Temizle();
        }

        private void btnGuncelle_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("update TBLKATEGORI set KATEGORIAD=@p1 where KATEGORIID=@p2", baglanti);
            komut.Parameters.AddWithValue("@p1", txtKategoriAd.Text);
            komut.Parameters.AddWithValue("@p2", txtKategoriID.Text);
            komut.ExecuteNonQuery();
            baglanti.Close();
            MessageBox.Show("Kategori Güncelleme İşlemi Başarıyla Gerçekleşti", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);
            Listele();
            Temizle();
        }

        private void dgvKategoriler_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                txtKategoriID.Text = dgvKategoriler.Rows[e.RowIndex].Cells[0].Value.ToString();
                txtKategoriAd.Text = dgvKategoriler.Rows[e.RowIndex].Cells[1].Value.ToString();
            }
            catch (Exception)
            {

            }
        }

        private void FrmKategoriler_Load(object sender, EventArgs e)
        {
            Listele();
        }
    }
}
