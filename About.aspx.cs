using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopuniTeretane();
                PopuniTrenera();
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

                DropDownList2.Items.Insert(0, new ListItem("Izaberite teretanu", ""));
                cmd.Connection.Close();
            }
        }
        private void PopuniTrenera()
        {

            DropDownList3.Items.Clear();

            if (!string.IsNullOrEmpty(DropDownList2.SelectedValue))
            {
                using (SqlConnection connection = new SqlConnection(Konekcija.constring))
                {
                    connection.Open();
                    SqlCommand cmd = new SqlCommand("SELECT ID, Ime + ' ' + Prezime AS Naziv FROM Trener WHERE id_teretane = @TeretanaID", connection);
                    cmd.Parameters.AddWithValue("@TeretanaID", DropDownList2.SelectedValue);

                    SqlDataReader reader = cmd.ExecuteReader();
                   

                    DropDownList3.DataSource = reader;
                    DropDownList3.DataTextField = "Naziv";
                    DropDownList3.DataValueField = "ID";
                    DropDownList3.DataBind();
                    cmd.Connection.Close();
                }
            }

            DropDownList3.Items.Insert(0, new ListItem("Izaberite trenera", ""));
        }
        private void DodajClanaUBazu()
        {
            using (SqlConnection connection = new SqlConnection(Konekcija.constring))
            {
                connection.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO Clan (Ime, Prezime, Kontakt, Datum_Rodjenja, Pol, ID_teretane, ID_trenera) VALUES (@Ime, @Prezime, @Kontakt, @DatumRodjenja, @Pol, @ID_teretane, @ID_trenera)", connection);

                cmd.Parameters.AddWithValue("@Ime", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Prezime", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Kontakt", TextBox3.Text);
                cmd.Parameters.AddWithValue("@DatumRodjenja", TextBox4.Text);
                cmd.Parameters.AddWithValue("@Pol", DropDownList1.SelectedValue);

                
                    cmd.Parameters.AddWithValue("@ID_teretane", DropDownList2.SelectedValue);



                    if (!string.IsNullOrEmpty(DropDownList3.SelectedValue))
                    {
                        cmd.Parameters.AddWithValue("@ID_trenera", DropDownList3.SelectedValue);
                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("@ID_trenera", DBNull.Value);
                    }

                    cmd.ExecuteNonQuery();
                    cmd.Connection.Close();


                    Response.Redirect("Default.aspx");
                
            }
        }
    
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            PopuniTrenera();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DodajClanaUBazu();

        }

        protected void DropDownList2_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}