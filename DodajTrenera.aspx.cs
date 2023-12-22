using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class DodajTrenera : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopuniTeretane();
               
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(Konekcija.constring))
            {
                connection.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO Trener (Ime, Prezime, Kontakt, Pol, ID_teretane) VALUES (@Ime, @Prezime, @Kontakt, @Pol, @ID_teretane)", connection);

                cmd.Parameters.AddWithValue("@Ime", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Prezime", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Kontakt", TextBox3.Text);
             
                cmd.Parameters.AddWithValue("@Pol", DropDownList1.SelectedValue);


                cmd.Parameters.AddWithValue("@ID_teretane", DropDownList2.SelectedValue);



            
             
                cmd.ExecuteNonQuery();
                cmd.Connection.Close();
                Response.Redirect("Default.aspx");



            }
        }
        private void PopuniTeretane()
        {
            using (SqlConnection connection = new SqlConnection(Konekcija.constring))
            {
                connection.Open();
                SqlCommand cmd = new SqlCommand("SELECT ID, Naziv FROM Teretana", connection);
                SqlDataReader reader = cmd.ExecuteReader();

                DropDownList2.DataSource = reader;
                DropDownList2.DataTextField = "Naziv";
                DropDownList2.DataValueField = "ID";
                DropDownList2.DataBind();

                DropDownList2.Items.Insert(0, new ListItem("Sve teretane", ""));
                cmd.Connection.Close();
            }
        }
    }
}