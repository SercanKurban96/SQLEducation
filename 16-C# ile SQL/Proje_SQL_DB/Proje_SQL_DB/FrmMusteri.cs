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
    public partial class FrmMusteri : Form
    {
        public FrmMusteri()
        {
            InitializeComponent();
        }
        SqlConnection baglanti = new SqlConnection("Data Source=SERCAN\\SQLEXPRESS;Initial Catalog=SatisVT;Integrated Security=True;Encrypt=False");

        void Listele()
        {
            SqlCommand komut = new SqlCommand("select * from TBLMUSTERI", baglanti);
            SqlDataAdapter da = new SqlDataAdapter(komut);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dgvMusteriler.DataSource = dt;
        }

        void Temizle()
        {
            txtMusteriID.Clear();
            txtMusteriAd.Clear();
            txtMusteriSoyad.Clear();
            cmbSehir.Text = "";
            txtBakiye.Clear();
        }
        private void FrmMusteri_Load(object sender, EventArgs e)
        {
            Listele();

            //Şehirleri ComboBox'a Aktarma
            baglanti.Open();
            SqlCommand komut = new SqlCommand("select * from TBLSEHIR", baglanti);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                cmbSehir.Items.Add(dr["SEHIRAD"]);
            }
            baglanti.Close();
        }

        private void btnListele_Click(object sender, EventArgs e)
        {
            Listele();
        }

        private void btnKaydet_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("insert into TBLMUSTERI (MUSTERIAD,MUSTERISOYAD,MUSTERISEHIR,MUSTERIBAKIYE) values (@p1,@p2,@p3,@p4)", baglanti);
            komut.Parameters.AddWithValue("@p1", txtMusteriAd.Text);
            komut.Parameters.AddWithValue("@p2", txtMusteriSoyad.Text);
            komut.Parameters.AddWithValue("@p3", cmbSehir.Text.ToUpper());
            komut.Parameters.AddWithValue("@p4", decimal.Parse(txtBakiye.Text));
            komut.ExecuteNonQuery();
            baglanti.Close();
            MessageBox.Show("Müşteri Kaydetme İşlemi Başarıyla Gerçekleşti", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);
            Listele();
            Temizle();
        }

        private void btnSil_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("delete from TBLMUSTERI where MUSTERIID=@p1", baglanti);
            komut.Parameters.AddWithValue("@p1", txtMusteriID.Text);
            komut.ExecuteNonQuery();
            baglanti.Close();
            MessageBox.Show("Müşteri Silme İşlemi Başarıyla Gerçekleşti", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);
            Listele();
            Temizle();
        }

        private void btnGuncelle_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("update TBLMUSTERI set MUSTERIAD=@p1,MUSTERISOYAD=@p2,MUSTERISEHIR=@p3,MUSTERIBAKIYE=@p4 where MUSTERIID=@p5", baglanti);
            komut.Parameters.AddWithValue("@p1", txtMusteriAd.Text);
            komut.Parameters.AddWithValue("@p2", txtMusteriSoyad.Text);
            komut.Parameters.AddWithValue("@p3", cmbSehir.Text.ToUpper());
            komut.Parameters.AddWithValue("@p4", decimal.Parse(txtBakiye.Text));
            komut.Parameters.AddWithValue("@p5", txtMusteriID.Text);
            komut.ExecuteNonQuery();
            baglanti.Close();
            MessageBox.Show("Müşteri Güncelleme İşlemi Başarıyla Gerçekleşti", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);
            Listele();
            Temizle();
        }

        private void dgvMusteriler_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                txtMusteriID.Text = dgvMusteriler.Rows[e.RowIndex].Cells[0].Value.ToString();
                txtMusteriAd.Text = dgvMusteriler.Rows[e.RowIndex].Cells[1].Value.ToString();
                txtMusteriSoyad.Text = dgvMusteriler.Rows[e.RowIndex].Cells[2].Value.ToString();
                cmbSehir.Text = dgvMusteriler.Rows[e.RowIndex].Cells[3].Value.ToString();
                txtBakiye.Text = dgvMusteriler.Rows[e.RowIndex].Cells[4].Value.ToString();
            }
            catch (Exception)
            {

                throw;
            }
        }

        private void btnAra_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("select * from TBLMUSTERI where MUSTERIAD=@p1", baglanti);
            komut.Parameters.AddWithValue("@p1", txtMusteriAd.Text);
            SqlDataAdapter da = new SqlDataAdapter(komut);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dgvMusteriler.DataSource = dt;
        }
    }
}
