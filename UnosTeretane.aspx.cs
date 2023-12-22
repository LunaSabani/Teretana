using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class UnosTeretane : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(Konekcija.constring))
            {
                connection.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO Teretana (Naziv, Adresa, Broj_telefona, Grad) VALUES (@naziv, @adresa, @kontakt, @grad)", connection);

                cmd.Parameters.AddWithValue("@Naziv", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Adresa", TextBox2.Text);
                cmd.Parameters.AddWithValue("@kontakt", TextBox3.Text);
                cmd.Parameters.AddWithValue("@grad", TextBox4.Text);






                cmd.ExecuteNonQuery();
                cmd.Connection.Close();
                Response.Redirect("Default.aspx");



            }
        }
    }
}