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
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopuniTeretane();
            }
        }
        private void PopuniTeretane()
        {

            using (SqlConnection connection = new SqlConnection(Konekcija.constring))
            {
                connection.Open();
                SqlCommand cmd = new SqlCommand("SELECT ID, Naziv FROM Teretana", connection);
                SqlDataReader reader = cmd.ExecuteReader();

                DropDownList1.DataSource = reader;
                DropDownList1.DataTextField = "Naziv";
                DropDownList1.DataValueField = "ID";
                DropDownList1.DataBind();

                DropDownList1.Items.Insert(0, new ListItem("Izaberite teretanu", ""));
                cmd.Connection.Close();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(Konekcija.constring))
            {
                connection.Open();
                SqlCommand cmd = new SqlCommand("SELECT broj_telefona FROM Teretana where id=@id", connection);

                cmd.Parameters.AddWithValue("@id", DropDownList1.SelectedValue);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
              
                GridView1.DataSource = dt;
                GridView1.DataBind();
                cmd.Connection.Close();


                cmd.Connection.Close();
            }
        }
    }
}