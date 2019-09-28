using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace n01318198_assignment1_ElmiraAlif
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                Page.Validate();

                if (Page.IsValid)
                {
                    /* Defining variables to get and store the information from user */
                    string Hotel_Name = hotel_name.Text.ToString();
                    string Hotel_Owner = hotel_owner.Text.ToString();
                    string Hotel_Email = hotel_email.Text.ToString();
                    string Hotel_Phone = hotel_phone.Text.ToString();
                    string Incident_Location = incident_location.Text.ToString();



                    /* Printing a summary of main information for user*/
                    formsummary.InnerHtml = "Thank you for completing this form. Here is the information you have provided:" + "<br>";
                    formsummary.InnerHtml += "Name of Hotel: " + Hotel_Name + "<br>";
                    formsummary.InnerHtml += "Hotel Owner: " + Hotel_Owner + "<br>";
                    formsummary.InnerHtml += "Email of Hotel: " + Hotel_Email + "<br>";
                    formsummary.InnerHtml += "Hotel's Phone Number: " + Hotel_Phone + "<br>";
                    formsummary.InnerHtml += "Location of Incident: " + Incident_Location + "<br>";
                    /* We put consditions to show the status of report in some cases*/
                    if(Hotel_Name == "Sheraton")
                    {
                        formsummary.InnerHtml += "Status of Report: Resolved";
                    }
                    if(Hotel_Name == "Royal")
                    {
                        formsummary.InnerHtml += "Status of Report: Pending Investigation";
                    }
                    if(Hotel_Name == "Venus")
                    {
                        formsummary.InnerHtml += "Status of Report: Urgent Attention";
                    }

                }
            }
        }
    }
}