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
      <div>
        <label for="hotel_name">Name of Hotel:</label>
        <asp:TextBox runat="server" ID="hotel_name"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="hotel_name" EnableClientScript="true" ErrorMessage="Please enter Name of Hotel."></asp:RequiredFieldValidator>
      </div>

      <div>
        <label for="hotel_owner">Hotel Owner:</label>
        <asp:TextBox runat="server" ID="hotel_owner"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="hotel_owner" EnableClientScript="true" ErrorMessage="Please enter Hotel Owner's name."></asp:RequiredFieldValidator>
      </div>

      <div>
        <label for="hotel_email">Email:</label>
        <asp:TextBox runat="server" ID="hotel_email" TextMode="Email" placeholder="me@example.com"></asp:TextBox>
          <%-- Reference for Email address validation
              URL: https://www.codeproject.com/Questions/360797/How-to-Validate-the-Email-id-Using-Asp-net
              Author: Mohamed Mitwalli
              Article: How to Validate the Email id Using Asp.net
              Access Date: 26 September 2019
              Purpose: Assignment for Web Application course --%>
        <asp:RegularExpressionValidator runat="server" ControlToValidate="hotel_email" ErrorMessage="Please enter a valid Email address."  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
      </div>


      <label for="hotel_phone">Phone Number:</label>
      <asp:TextBox runat="server" ID="hotel_phone" TextMode="Phone" placeholder="999-999-9999"></asp:TextBox>
      <%-- Reference for Phone number validation
                    URL: https://sensibledev.com/phone-number-validation-in-asp-net/
                    Author: MATTHEW SINEX
                    Article Title: Phone Number Validation in ASP.NET
                    Access Date: 26 September 2019
                    Purpose: Assignment for Web Application course --%>
       <asp:RegularExpressionValidator runat="server" ControlToValidate="hotel_phone" ErrorMessage="Please enter a valid Phone number" ValidationExpression="^\(?([0-9]{3})\)?[-.●]?([0-9]{3})[-.●]?([0-9]{4})$" ></asp:RegularExpressionValidator>

    </section>

    <section>
      <h2>Incident Report Information</h2>
      <label for="incident_date">Date of Incident:</label>
      <asp:TextBox runat="server" ID="incident_date" placeholder="dd/mm/yyyy"></asp:TextBox>
      <%-- Reference for Incident Date validation
          URL: https://asp.net-tutorials.com/validation/range-validator/
          Author: ASP.NET Web Forms Tutorial
          Article Title: Validation - RangeValidator
          Access Date: 26 September 2019
          --%>
      <asp:RangeValidator runat="server" ControlToValidate="incident_date" ErrorMessage="Please enter a valid Date."  Type="Date"  MinimumValue="01/01/1900"  MaximumValue="01/01/2100"></asp:RangeValidator>


      <label for="incident_time">Time of Incident:</label>
      <asp:TextBox runat="server" ID="incident_time" placeholder="HH:MMAM|PM"></asp:TextBox>
        <%-- Reference for Incident Time 
            URL: https://www.c-sharpcorner.com/resources/790/time-validation-in-asp-net-textbox.aspx
            Author: VB Developer
            Article: Time Validation in ASP.NET TextBox
            Access Date: 26 September 2019
            --%>
      <asp:RegularExpressionValidator runat="server" ControlToValidate="incident_time" ErrorMessage="Please enter a valid Time."  ValidationExpression="^([1-9]|1[0-2]|0[1-9]){1}(:[0-5][0-9][aApP][mM]){1}$"></asp:RegularExpressionValidator>
      
        <label for="incident_location">Location of Incident:</label>
      <asp:TextBox runat="server" ID="incident_location"></asp:TextBox>
      <asp:RequiredFieldValidator runat="server" ControlToValidate="incident_location"  EnableClientScript="true" ErrorMessage="Please enter Location of Incident."></asp:RequiredFieldValidator>
    </section>

    <section>
      <div>
        <h2>Please Select the reason for incident:</h2>
        <asp:RadioButtonList runat="server" ID="incident_detail">
          <asp:ListItem Text="Injury/medical conditions" Value="detail_injury"></asp:ListItem>
          <asp:ListItem Text="Accident" Value="detail_accident"></asp:ListItem>
          <asp:ListItem Text="Lost Person" Value="detail_lost"></asp:ListItem>
          <asp:ListItem Text="Emergency eg. Fire" Value="detail_emergency"></asp:ListItem>
          <asp:ListItem Text="Other" Value="detail_other"></asp:ListItem>
        </asp:RadioButtonList>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="incident_detail" EnableClientScript="true" ErrorMessage="Please Choose one of the options."></asp:RequiredFieldValidator>
      </div>

      <div>
        <h2>Describe how the incident occured.</h2>
        <div>
          <asp:TextBox runat="server" ID="incident_description" TextMode="MultiLine" Height="200" width="300"></asp:TextBox>
        </div>
      </div>

      <div>
        <h2>Any staff, vehicle, equipment involved in accident?</h2>
        <asp:DropDownList runat="server" ID="incident_involvement">
          <asp:ListItem Text="Yes" Value="yes"></asp:ListItem>
          <asp:ListItem Text="No" Value="no"></asp:ListItem>
          <asp:ListItem Text="I do not know" Value="not-know"></asp:ListItem>
        </asp:DropDownList>
        <h2>If Yes:</h2>
        <asp:CheckBoxList runat="server" ID="involvement_yes">
          <asp:ListItem Text="Staff" Value="staff_involvement"></asp:ListItem>
          <asp:ListItem Text="Equipment" Value="equipment_involvement"></asp:ListItem>
          <asp:ListItem Text="Vehicle" Value="vehicle_involvement"></asp:ListItem>
        </asp:CheckBoxList>
      </div>
      <div>
        <h2>Do you have any graphical prove or pictures taken?</h2>
        <asp:RadioButtonList runat="server" ID="incident_picture">
          <asp:ListItem Text="Yes" Value="yes"></asp:ListItem>
          <asp:ListItem Text="No" value="no"></asp:ListItem>
        </asp:RadioButtonList>
      </div>
      <div>
        <h2>Legal action taken? if any</h2>
        <asp:CheckBoxList runat="server" ID="legal_action">
          <asp:ListItem Text="Varbal Warning" Value="verbal_action"></asp:ListItem>
          <asp:ListItem Text="Written Warning" Value="written_action"></asp:ListItem>
          <asp:ListItem Text="Suspension" Value="suspension_action"></asp:ListItem>
          <asp:ListItem Text="Other" Value="other_action"></asp:ListItem>
        </asp:CheckBoxList>
      </div>
      <asp:Button Text="Send" runat="server" />
      <asp:ValidationSummary runat="server" ShowSummary="true" />
      <section id="formsummary" runat="server">
      </section>
    </section>
  </form>
</body>

</html>