﻿using System;
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

            //string query = "select * from tb_transports where tp_vehicle like'" + txt_tp_vehicle.Text + "%'";
            string query = "SELECT tb_transports.tp_time_get, tb_transports.tp_time_get_finish, tb_transports.tp_time_set, tb_transports.tp_time_set_finish, tb_materials.material_name, tb_status.status_describe, tb_transports.tp_vehicle, tb_vehicles.vehicle_number FROM tb_transports INNER JOIN tb_materials ON tb_transports.tp_material = tb_materials.material_id INNER JOIN tb_stations ON tb_transports.tp_from = tb_stations.station_id AND tb_transports.tp_to = tb_stations.station_id INNER JOIN tb_status ON tb_transports.tp_status = tb_status.status_id INNER JOIN tb_vehicles ON tb_transports.tp_vehicle = tb_vehicles.vehicle_id WHERE (tb_transports.tp_vehicle LIKE '" + txt_tp_vehicle.Text + "%')";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
			DataSet ds = new DataSet();
			da.Fill(ds);
            GridView_search.DataSource = ds;
            GridView_search.DataBind();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
			
        }

        protected void bt_search_Click(object sender, EventArgs e)
        {
            connection();
			string query = "select * from tb_transports where tp_vehicle like'" + txt_tp_vehicle.Text + "%'";
			//string query = "SELECT tb_transports.tp_time_get, tb_transports.tp_time_get_finish, tb_transports.tp_time_set, tb_transports.tp_time_set_finish, tb_materials.material_name, tb_status.status_describe, tb_transports.tp_vehicle, tb_vehicles.vehicle_number FROM tb_transports INNER JOIN tb_materials ON tb_transports.tp_material = tb_materials.material_id INNER JOIN tb_stations ON tb_transports.tp_from = tb_stations.station_id AND tb_transports.tp_to = tb_stations.station_id INNER JOIN tb_status ON tb_transports.tp_status = tb_status.status_id INNER JOIN tb_vehicles ON tb_transports.tp_vehicle = tb_vehicles.vehicle_id WHERE (tb_transports.tp_vehicle LIKE '" + txt_tp_vehicle.Text + "%') AND (tb_transports.tp_material LIKE '" + ddl_material.SelectedItem.Text + "')";
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
        }
    }
}