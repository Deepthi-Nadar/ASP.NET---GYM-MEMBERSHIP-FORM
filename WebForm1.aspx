<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Gym Membership</title>

    <style>
body {
    margin: 0;
    padding: 0;
    background-image: url('images/Backg1.jpeg');
    background-size: cover;
    background-position: center;
    font-family: 'Segoe UI', sans-serif;
}

/* Dark overlay */
.overlay {
    background: rgba(0, 0, 0, 0.75);
    min-height: 100vh;
    padding: 40px 0;
}

/* Glass container */
.container {
    width: 950px;
    margin: auto;
    padding: 40px;
    border-radius: 25px;
    backdrop-filter: blur(10px);
    background: rgba(255, 255, 255, 0.08);
    box-shadow: 0 0 40px rgba(255, 140, 0, 0.3);
    color: white;
}

/* Header Styling */
.header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 40px;
    border-bottom: 2px solid orange;
    padding-bottom: 15px;
}

.left-logo {
    display: flex;
    align-items: center;
}

.logo-img {
    width: 65px;
    height: 65px;
    margin-right: 12px;
    border-radius: 50%;
    border: 2px solid orange;
}

.gym-name {
    font-size: 24px;
    font-weight: bold;
    letter-spacing: 1px;
}

.right-title h1 {
    font-size: 38px;
    color: orange;
    margin: 0;
    text-shadow: 0 0 10px orange;
}

/* Buttons Top */
.top-buttons {
    text-align: center;
    margin: 30px 0;
}

.btn-orange {
    background: linear-gradient(45deg, orange, darkorange);
    border: none;
    padding: 10px 22px;
    color: white;
    border-radius: 25px;
    font-weight: bold;
    cursor: pointer;
    transition: 0.3s ease;
    box-shadow: 0 0 10px rgba(255, 165, 0, 0.6);
}

.btn-orange:hover {
    transform: scale(1.05);
    box-shadow: 0 0 20px orange;
}

/* Form Layout */
.form-group {
    margin-bottom: 20px;
    display: flex;
    align-items: center;
}

label {
    width: 260px;
    font-size: 18px;
}

input[type=text], select {
    width: 320px;
    padding: 10px;
    border-radius: 10px;
    border: none;
    font-size: 15px;
}

/* Bottom Buttons */
.bottom-buttons {
    text-align: center;
    margin-top: 30px;
}

    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="overlay">
            <div class="container">

                <div class="left-logo">
        <img src="logo.png" alt="Gym Logo" class="logo-img" />
        <span class="gym-name">POWER GYM</span>
    </div>

                <div class="top-buttons">
                    <asp:Button ID="Button1" runat="server" Text="Members" CssClass="btn-orange" />
                    <asp:Button ID="Button2" runat="server" Text="Members with Trainer" CssClass="btn-orange" />
                </div>

                <div class="form-group">
                    <label>Membership Type</label>
                    <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                </div>

                <div class="form-group">
                    <label>Duration (Months)</label>
                    <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
                </div>

                <div class="form-group">
                    <label>Trainer Required</label>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </div>

                <div class="form-group">
                    <label>Personal Trainer Name</label>
                    <asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList>
                </div>

                <div class="form-group">
                    <label>Medical Conditions</label>
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server"></asp:CheckBoxList>
                </div>

                <div class="form-group">
                    <label>Height (cm)</label>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>Weight (kg)</label>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>BMI</label>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </div>

                <div style="text-align:center; margin-top:20px;">
                    <div class="bottom-buttons">
    <asp:Button ID="Button4" runat="server" Text="Back" CssClass="btn-orange" />
    &nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" Text="Submit" CssClass="btn-orange" />
</div>
                </div>

            </div>
        </div>
    </form>
</body>
</html>