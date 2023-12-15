using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopuniTeretane();
                PopuniTrenera();
                PrikaziPodatke();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            PrikaziPodatke();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

            PopuniTrenera();
            


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
        private void PopuniTrenera()
        {
            DropDownList3.Items.Clear();

            if (!string.IsNullOrEmpty(DropDownList2.SelectedValue))
            {
                using (SqlConnection connection = new SqlConnection(Konekcija.constring))
                {
                    connection.Open();
                    SqlCommand cmd = new SqlCommand("select id, ime +' '+prezime as PunoIme from Trener where Id_teretane= @ID", connection);
                    cmd.Parameters.AddWithValue("@ID", DropDownList2.SelectedValue);

                    SqlDataReader reader = cmd.ExecuteReader();

                    DropDownList3.DataSource = reader;
                    DropDownList3.DataTextField = "PunoIme";
                    DropDownList3.DataValueField = "id";
                    DropDownList3.DataBind();
                    cmd.Connection.Close();
                }
            }

            DropDownList3.Items.Insert(0, new ListItem("Svi treneri", ""));
        }
        private void PrikaziPodatke()
        {
            using (SqlConnection connection = new SqlConnection(Konekcija.constring))
            {
                connection.Open();
                SqlCommand cmd = new SqlCommand("SELECT id, Ime, Prezime FROM Trener", connection);

                if (!string.IsNullOrEmpty(DropDownList2.SelectedValue))
                {
                    cmd.CommandText += " WHERE ID = @ID_teretane";
                    cmd.Parameters.AddWithValue("@ID_teretane", DropDownList2.SelectedValue);
                }

                if (!string.IsNullOrEmpty(DropDownList3.SelectedValue))
                {
                    cmd.CommandText += " AND id= @id_trener";
                    cmd.Parameters.AddWithValue("@id_trener", DropDownList3.SelectedValue);
                }

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                GridView1.DataSource = dt;
                GridView1.DataBind();
                cmd.Connection.Close();
            }
        }
    }
}