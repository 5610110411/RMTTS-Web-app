using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace RMTTS_2._0.pages
{
    public partial class transport : System.Web.UI.Page
    {
		public SqlConnection con;
		public string constr;

		public void connection()
		{ 
			constr = ConfigurationManager.ConnectionStrings["RMTTSConnectionString"].ToString();
			con = new SqlConnection(constr);
			con.Open();
		}
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txt_tp_material_TextChanged(object sender, EventArgs e)
        {

        }

        private void rep_bind()
        {
            connection();
			string query = "select * from tb_transports where tp_vehicle like'" + txt_carNum.Text + "%'";

			SqlDataAdapter da = new SqlDataAdapter(query, con);
			DataSet ds = new DataSet();
			da.Fill(ds);
			GridView2.DataSource = ds;
			GridView2.DataBind();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
			connection();
			string query = "SELECT * FROM tb_transports WHERE tp_vehicle LIKE'" + txt_carNum.Text + "%'";
			SqlCommand com = new SqlCommand(query, con);

			SqlDataReader dr;
			dr = com.ExecuteReader();


			if (dr.HasRows)
			{
				dr.Read();

				rep_bind();
				GridView2.Visible = true;

                txt_carNum.Text = "";
				
			}
			else
			{
				GridView2.Visible = false;        
				
			
			}
        }
    }
}