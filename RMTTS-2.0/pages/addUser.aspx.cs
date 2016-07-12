using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;

namespace RMTTS_2._0.pages
{
    public partial class addUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
		SqlConnection con = new SqlConnection(@"Data Source=NEXT-GCDLTNPKUF\SQLEXPRESS;Initial Catalog=RMTTS;Persist Security Info=True;User ID=newnine;Password=ninenine");
        protected void bt_adduser_ok(object sender, EventArgs e)
        {
            /*con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            
            cmd.CommandText = "INSERT INTO tb_staff VALUES('" +TextBox1.Text+"', '"+TextBox2.Text+"')";
            cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("RMTTS.aspx");
            */

            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO tb_staff(staff_id,staff_title,staff_firstname,staff_lastname, staff_tel, staff_email, staff_role) VALUES('" + txt_staffid.Text + "', '" + DropDownList_title.SelectedItem.Text + "', '" + txt_firstname.Text + "', '" + txt_lastname.Text + "', '" + txt_tel.Text + "', '" + txt_email.Text + "', '" + DropDownList_role.SelectedItem.Text + "')", con);
            int result = cmd.ExecuteNonQuery();
            con.Close();

            if (result == 1)
            {
                //lblmsg.BackColor = Color.Green;
                //lblmsg.ForeColor = Color.White;
                //lblmsg.Text = "เพิ่มข้อมูลสำเร็จ";
                //------------------Making popup window without reload page
                //Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('การเพิ่มข้อมูลสำเร็จ');</script>");
                //------------------Gray popup window
                //System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('Message');", true);
                //------------------Makeing popup window as long as reload page
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                    "alert('เพิ่มข้อมูลสำเร็จ'); window.location='" + Request.ApplicationPath + "pages/usermanagement.aspx';", true);
            }
            else
            {
                //lblmsg.BackColor = Color.Red;
                //lblmsg.ForeColor = Color.White;
                //lblmsg.Text = "เกิดข้อผิดพลาด กรุณาลองใหม่อีกครั้ง";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect",
                    "alert('เพิ่มข้อมูลผิดพลาด ลองใหม่อีกครั้ง'); window.location='" + Request.ApplicationPath + "pages/usermanagement.aspx';", true);
            }
            //Response.Redirect("RMTTS.aspx");
        }
		protected void bt_adduser_cancel(object sender, EventArgs e)
		{
			Response.Redirect("usermanagement.aspx");
		}
    }
}