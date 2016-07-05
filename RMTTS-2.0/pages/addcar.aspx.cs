using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RMTTS_2._0.pages
{
    public partial class addcar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
		
		SqlConnection con = new SqlConnection(@"Data Source=NEXT-GCDLTNPKUF\SQLEXPRESS;Initial Catalog=RMTTS;Persist Security Info=True;User ID=newnine;Password=ninenine");
        protected void bt_addcar_ok(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO tb_vehicles(vehicle_id ,vehicle_type, vehicle_legalweigh, vehicle_number) VALUES('" + txt_vehicle_id.Text + "', '" + txt_vehicle_type.Text + "', '" + txt_legalweight.Text + "', '" + txt_vehicle_number.Text + "')", con);
            int result = cmd.ExecuteNonQuery();
            con.Close();
            if (result == 1)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                    "alert('เพิ่มข้อมูลสำเร็จ'); window.location='" + Request.ApplicationPath + "pages/carmanagement.aspx';", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                    "alert('เพิ่มข้อมูลผิดพลาด ลองใหม่อีกครั้ง'); window.location='" + Request.ApplicationPath + "pages/carmanagement.aspx';", true);
            }
        }
		
		protected void bt_addcar_cancel(object sender, EventArgs e)
		{
			Response.Redirect("carmanagement.aspx");
		}
		
		
    }
}