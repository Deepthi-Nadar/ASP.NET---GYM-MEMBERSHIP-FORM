using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Get Payment Mode
            string paymentMode = rblPaymentMode.SelectedValue;

            // Get Joining Date
            DateTime joiningDate = Calendar1.SelectedDate;

            // Check File Upload
            if (FileUpload1.HasFile)
            {
                string fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName);

                if (fileExtension.ToLower() != ".jpg" &&
                    fileExtension.ToLower() != ".jpeg" &&
                    fileExtension.ToLower() != ".png" &&
                    fileExtension.ToLower() != ".pdf")
                {
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    lblMessage.Text = "Only .jpg, .jpeg, .png and .pdf files allowed";
                }
                else
                {
                    string fileName = Guid.NewGuid().ToString() + fileExtension;
                    FileUpload1.SaveAs(Server.MapPath("~/IDProofs/" + fileName));

                    lblMessage.ForeColor = System.Drawing.Color.Green;
                    lblMessage.Text = "Form Submitted Successfully";
                }
            }
            else
            {
                lblMessage.ForeColor = System.Drawing.Color.White;
                lblMessage.Text = "Please upload ID proof";
            }
        }
    }
}