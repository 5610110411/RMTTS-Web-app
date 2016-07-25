using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Globalization;
using System.Collections;


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
            bind_year_ddl();
        }

        
        //Making DropdownList Year 
        private void bind_year_ddl()
        {
            int year = (System.DateTime.Now.Year) + 543; // 543 is for convert to พ.ศ. 
            for (int intCount = year; intCount >= 1980; intCount--)
            {
                ddl_year_from.Items.Add(intCount.ToString());
                ddl_year_to.Items.Add(intCount.ToString());
            }
        }



    protected void txt_tp_material_TextChanged(object sender, EventArgs e)
        {

        }

        /*private void rep_bind()
        {
            connection();
            //normal
            //string query = "select * from tb_transports where tp_vehicle ='" + txt_tp_vehicle.Text + "' AND tp_material ='2'";
            //string query = "select tb_transports.tp_time_get_finish from tb_transports where tp_vehicle ='" + txt_tp_vehicle.Text + "' AND tp_material ='2'";

            string query = "SELECT tb_transports.tp_time_get, tb_transports.tp_time_get_finish FROM tb_transports where tp_vehicle ='" + txt_tp_vehicle.Text + "' AND tp_material ='2'";
            //string query = "select * FROM tb_transports INNER JOIN tb_materials ON tb_transports.tp_material = tb_materials.material_id INNER JOIN tb_stations ON tb_transports.tp_from = tb_stations.station_id AND tb_transports.tp_to = tb_stations.station_id INNER JOIN tb_status ON tb_transports.tp_status = tb_status.status_id INNER JOIN tb_vehicles ON tb_transports.tp_vehicle = tb_vehicles.vehicle_id where tp_vehicle like'" + txt_tp_vehicle.Text + "'";


            //string query = "SELECT tb_transports.tp_time_get, tb_transports.tp_time_get_finish, tb_transports.tp_time_set, tb_transports.tp_time_set_finish, tb_materials.material_name, tb_status.status_describe, tb_transports.tp_vehicle, tb_vehicles.vehicle_number FROM tb_transports INNER JOIN tb_materials ON tb_transports.tp_material = tb_materials.material_id INNER JOIN tb_stations ON tb_transports.tp_from = tb_stations.station_id AND tb_transports.tp_to = tb_stations.station_id INNER JOIN tb_status ON tb_transports.tp_status = tb_status.status_id INNER JOIN tb_vehicles ON tb_transports.tp_vehicle = tb_vehicles.vehicle_id WHERE tb_transports.tp_vehicle LIKE '" + txt_tp_vehicle.Text + "%'";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
			DataSet ds = new DataSet();
			da.Fill(ds);
            GridView_search.DataSource = ds;
            SqlDataSource_show.DataBind();


        }*/

        protected void Button1_Click(object sender, EventArgs e)
        {
			
        }

        protected void bt_search_Click(object sender, EventArgs e)
        {
            string whereclause = "";
            if (txt_tp_vehicle.Text.Trim() != "")
                whereclause = whereclause + " AND tp_vehicle LIKE '%" + txt_tp_vehicle.Text.Trim() + "%'";
            if (ddl_material.SelectedValue != "none")
                //txt_tp_vehicle.Text = ddl_material.SelectedValue;
                whereclause = whereclause + " AND tb_materials.material_name LIKE '" + ddl_material.SelectedValue + "'";
            //if (txt_tp_vehicle.Text.Trim() != "none")
            if(DropDownList_Date0.SelectedValue != "none" && DropDownList_Month0.SelectedValue != "none" && ddl_year_from.Text != "--" && DropDownList_Date.SelectedValue != "none" && DropDownList_Month.SelectedValue != "none" && ddl_year_to.Text != "--")
            {
                //int tmp = int.Parse(ddl_year_from.SelectedValue) - 543;
                //txt_tp_vehicle.Text = tmp.ToString(); ;
                //whereclause = whereclause + " AND (tp_time_set_finish BETWEEN '2016-02-01 0:00:00.0000000' AND '2016-02-27 00:00:00.0000000')";
                whereclause = whereclause + " AND (tp_time_set_finish BETWEEN '"+ (int.Parse(ddl_year_from.SelectedValue) - 543).ToString() +"-" + DropDownList_Month0.SelectedValue + "-" + DropDownList_Date0.SelectedValue + " 0:00:00.0000000' AND '" + (int.Parse(ddl_year_to.SelectedValue) - 543).ToString() + "-" + DropDownList_Month.SelectedValue + "-" + DropDownList_Date.SelectedValue + " 23:59:59.0000000')";
            }

            SqlDataSource_show.SelectCommand = SqlDataSource_show.SelectCommand + whereclause;
            SqlDataSource_show.Select(DataSourceSelectArguments.Empty);

            /*connection();
            //normal
            //string query = "select tb_transports.tp_time_get_finish from tb_transports where tp_vehicle ='" + txt_tp_vehicle.Text + "' AND tp_material ='2'";

            string query = "SELECT tb_transports.tp_time_get, tb_transports.tp_time_get_finish FROM tb_transports where tp_vehicle ='" + txt_tp_vehicle.Text + "' AND tp_material ='2'";


            //string query = "select * FROM tb_transports INNER JOIN tb_materials ON tb_transports.tp_material = tb_materials.material_id INNER JOIN tb_stations ON tb_transports.tp_from = tb_stations.station_id AND tb_transports.tp_to = tb_stations.station_id INNER JOIN tb_status ON tb_transports.tp_status = tb_status.status_id INNER JOIN tb_vehicles ON tb_transports.tp_vehicle = tb_vehicles.vehicle_id where tp_vehicle like'" + txt_tp_vehicle.Text + "'";

            //string query = "SELECT * FROM tb_transports INNER JOIN tb_materials ON tb_transports.tp_material = tb_materials.material_id WHERE tb_transports.tp_vehicle like '" + txt_tp_vehicle.Text + "%'";
            //string query = "SELECT tb_transports.tp_time_get, tb_transports.tp_time_get_finish, tb_transports.tp_time_set, tb_transports.tp_time_set_finish, tb_materials.material_name, tb_status.status_describe, tb_transports.tp_vehicle, tb_vehicles.vehicle_number FROM tb_transports INNER JOIN tb_materials ON tb_transports.tp_material = tb_materials.material_id INNER JOIN tb_stations ON tb_transports.tp_from = tb_stations.station_id AND tb_transports.tp_to = tb_stations.station_id INNER JOIN tb_status ON tb_transports.tp_status = tb_status.status_id INNER JOIN tb_vehicles ON tb_transports.tp_vehicle = tb_vehicles.vehicle_id WHERE (tb_transports.tp_vehicle LIKE '" + txt_tp_vehicle.Text + "%')";
            //string query = "SELECT tb_transports.tp_time_get, tb_transports.tp_time_get_finish, tb_transports.tp_time_set, tb_transports.tp_time_set_finish, tb_materials.material_name, tb_status.status_describe, tb_transports.tp_vehicle, tb_vehicles.vehicle_number FROM tb_transports INNER JOIN tb_materials ON tb_transports.tp_material = tb_materials.material_id INNER JOIN tb_stations ON tb_transports.tp_from = tb_stations.station_id AND tb_transports.tp_to = tb_stations.station_id INNER JOIN tb_status ON tb_transports.tp_status = tb_status.status_id INNER JOIN tb_vehicles ON tb_transports.tp_vehicle = tb_vehicles.vehicle_id WHERE tb_transports.tp_vehicle LIKE '" + txt_tp_vehicle.Text + "' ";


            //string query = "SELECT tb_transports.tp_time_get, tb_transports.tp_time_get_finish, tb_transports.tp_time_set, tb_transports.tp_time_set_finish, tb_materials.material_name, tb_status.status_describe, tb_transports.tp_vehicle, tb_vehicles.vehicle_number FROM tb_transports INNER JOIN tb_materials ON tb_transports.tp_material = tb_materials.material_id INNER JOIN tb_stations ON tb_transports.tp_from = tb_stations.station_id AND tb_transports.tp_to = tb_stations.station_id INNER JOIN tb_status ON tb_transports.tp_status = tb_status.status_id INNER JOIN tb_vehicles ON tb_transports.tp_vehicle = tb_vehicles.vehicle_id WHERE tb_transports.tp_vehicle = 'ตลก555')";
            SqlCommand com = new SqlCommand(query, con);

			SqlDataReader dr;
			dr = com.ExecuteReader();


			if (dr.HasRows)
			{
				dr.Read();

				rep_bind();
                GridView_search.Visible = true;

                txt_tp_vehicle.Text = "";
				
			}
			else
			{
                GridView_search.Visible = false;        
			}
            */
        }

        protected void SqlDataSource_show_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        
        protected void DropDownList_Date0_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}