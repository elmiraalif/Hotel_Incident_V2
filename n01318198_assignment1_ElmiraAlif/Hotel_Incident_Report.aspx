<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hotel_Incident_Report.aspx.cs" Inherits="n01318198_assignment1_ElmiraAlif.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Hotel Incident Report</title>
    </head>
    <body>
        <h1>Hotel Incident Report</h1>
        <p>Please complete this Incident report very carefully.</p>
        <form id="form1" runat="server">
            <section>
                <h2>General Information</h2>
                <label for="hotel_name">Name of Hotel:</label>
                <asp:TextBox runat="server" ID="hotel_name"></asp:TextBox>

                <label for="hotel_owner">Hotel Owner:</label>
                <asp:TextBox runat="server" ID="hotel_owner"></asp:TextBox>

                <label for="hotel_email">Email:</label>
                <asp:TextBox runat="server" ID="hotel_email" TextMode="Email"></asp:TextBox>

                <label for="hotel_phone">Phone Number:</label>
                <asp:TextBox runat="server" ID="hotel_phone" TextMode="Phone"></asp:TextBox>
            </section>
        
            <section>
                <h2>Incident Report Information</h2>
                <label for="incident_date">Date of Incident:</label>
                <asp:TextBox runat="server" ID="incident_date" TextMode="Date"></asp:TextBox>

                <label for="incident_time">Time of Incident:</label>
                <asp:TextBox runat="server" ID="incident_time" TextMode="Time"></asp:TextBox>

                <label for="incident_location">Location of Incident:</label>
                <asp:TextBox runat="server" ID="incident_location"></asp:TextBox>
            </section>
            <section>
                 <h2>Incident Details</h2>
                <div>
                    <h3>Please Select the reason for incident:</h3>
                    <asp:RadioButtonList runat="server" ID="incident_detail">
                        <asp:ListItem Text="Injury/medical conditions" Value="detail_injury"></asp:ListItem>
                        <asp:ListItem Text="Accident" Value="detail_accident"></asp:ListItem>
                        <asp:ListItem Text="Lost Person" Value="detail_lost"></asp:ListItem>
                        <asp:ListItem Text="Emergency eg. Fire" Value="detail_emergency"></asp:ListItem>
                        <asp:ListItem Text="Other" Value="detail_other"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>

                <div>
                    <h3>Describe how the incident occured.</h3>
                    <div>
                        <asp:TextBox runat="server" ID="incident_description" TextMode="MultiLine" Height="200" width="300"></asp:TextBox>
                    </div>
                </div>

                <div>
                    <h3>Any staff, vehicle, equipment involved in accident?</h3>
                    <asp:DropDownList runat="server" ID="incident_involved">
                        <asp:ListItem Text="Yes" Value="yes"></asp:ListItem>
                        <asp:ListItem Text="No" Value="no"></asp:ListItem>
                        <asp:ListItem Text="I do not know" Value="not-know"></asp:ListItem>
                    </asp:DropDownList>
                    <h3>If Yes:</h3>
                    <asp:CheckBoxList runat="server" ID="involved_yes">
                        <asp:ListItem Text="Staff" Value="staff_involved"></asp:ListItem>
                        <asp:ListItem Text="Equipment" Value="equipment_involved"></asp:ListItem>
                        <asp:ListItem Text="Vehicle" Value="vehicle_involved"></asp:ListItem>
                    </asp:CheckBoxList>
                </div>
                <div>
                    <h3>Do you have any graphical prove or pictures taken?</h3>
                    <asp:RadioButtonList runat="server" ID="incident_picture">
                        <asp:ListItem Text="Yes" Value="yes"></asp:ListItem>
                        <asp:ListItem Text="No" value="no"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div>
                    <h3>Legal action taken? if any</h3>
                    <asp:CheckBoxList runat="server" ID="legal_action">
                        <asp:ListItem Text="Varbal Warning" Value="verbal_action"></asp:ListItem>
                        <asp:ListItem Text="Written Warning" Value="written_action"></asp:ListItem>
                        <asp:ListItem Text="Suspension" Value="suspension_action"></asp:ListItem>
                        <asp:ListItem Text="Other" Value="other_action"></asp:ListItem>
                    </asp:CheckBoxList>
                 </div>
                 <asp:Button Text="Send" runat="server" />
            </section>
        </form>
    </body>
</html>
