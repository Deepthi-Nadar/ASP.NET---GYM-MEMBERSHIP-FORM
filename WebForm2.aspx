<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Gym Membership</title>

    <style>
body {
    margin: 0;
    padding: 0;
    background: url('images/Backg1.jpeg') no-repeat center center fixed;
    background-size: cover;
    font-family: 'Segoe UI', sans-serif;
}

/* Dark overlay */
.overlay {
    background: rgba(0, 0, 0, 0.75);
    min-height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 40px 0;
}

/* Main Glass Container */
.container {
    width: 950px;
    padding: 40px;
    border-radius: 20px;
    backdrop-filter: blur(12px);
    background: rgba(255, 255, 255, 0.08);
    box-shadow: 0 0 40px rgba(255, 140, 0, 0.4);
    color: white;
}

/* Navbar */
.navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding-bottom: 15px;
    margin-bottom: 30px;
    border-bottom: 2px solid orange;
}

.nav-left {
    display: flex;
    align-items: center;
}

.logo-img {
    width: 60px;
    height: 60px;
    border-radius: 50%;
    margin-right: 12px;
    border: 2px solid orange;
}

.gym-name {
    font-size: 22px;
    font-weight: bold;
    letter-spacing: 1px;
}

.nav-right .btn-orange {
    margin-left: 10px;
}

/* Buttons */
.btn-orange {
    background: linear-gradient(45deg, orange, darkorange);
    border: none;
    padding: 10px 22px;
    color: white;
    border-radius: 25px;
    font-weight: bold;
    cursor: pointer;
    transition: 0.3s ease;
    box-shadow: 0 0 12px rgba(255, 165, 0, 0.6);
}

.btn-orange:hover {
    transform: scale(1.05);
    box-shadow: 0 0 20px orange;
}

/* Form Styling */
.form-group {
    margin-bottom: 20px;
    display: flex;
    align-items: center;
}

.form-group label {
    width: 260px;
    font-size: 17px;
    font-weight: 500;
}

/* Inputs */
input[type=text],
select,
textarea {
    width: 320px;
    padding: 10px;
    border-radius: 8px;
    border: none;
    font-size: 15px;
    outline: none;
}

/* Dropdown & textbox focus effect */
input[type=text]:focus,
select:focus {
    box-shadow: 0 0 10px orange;
}

/* Checkbox & CheckboxList */
input[type=checkbox] {
    transform: scale(1.2);
}

/* BMI Label */
#Label1 {
    font-weight: bold;
    font-size: 18px;
    color: orange;
}

/* Bottom Buttons */
.bottom-buttons {
    text-align: center;
    margin-top: 30px;
}

.bottom-buttons .btn-orange {
    margin: 0 10px;
}

/* Responsive */
@media (max-width: 1000px) {
    .container {
        width: 90%;
    }

    .form-group {
        flex-direction: column;
        align-items: flex-start;
    }

    .form-group label {
        margin-bottom: 5px;
    }

    input[type=text],
    select {
        width: 100%;
    }
}

    </style>

</head>
<body>
    <form id="form1" runat="server">
       <div class="overlay">
            <div class="container">

<div class="navbar">

    <div class="nav-left">
        <img src="images\image-removebg-preview (1).png" class="logo-img" />
        <span class="gym-name">POWER GYM</span>
    </div>

    <div class="nav-right">
        <asp:Button ID="Button1" runat="server" Text="Members" CssClass="btn-orange" />
        <asp:Button ID="Button2" runat="server" Text="Members with Trainer" CssClass="btn-orange" />
    </div>

</div>

                <div class="form-group">
                    <label>Payment Mode </label>
                   
                        <asp:RadioButtonList ID="rblPaymentMode" runat="server">
                        <asp:ListItem Text="Cash" Value="Cash"></asp:ListItem>
                        <asp:ListItem Text="Card" Value="Card"></asp:ListItem>
                        <asp:ListItem Text="UPI" Value="UPI"></asp:ListItem>
    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate ="rblPaymentMode" runat="server" ErrorMessage="* Required" ForeColor="Red" EnableClientScript="False"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group">
                    <label>Joining Date</label>
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                </div>

                <div class="form-group">
                    <label>Upload ID Proof</label>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </div>

               

                <div style="text-align:center; margin-top:20px;">
                    <div class="bottom-buttons">
    &nbsp;&nbsp;

                        <asp:Button ID="btnSubmit" runat="server" 
        Text="Submit" CssClass="btn-orange" OnClick="btnSubmit_Click" />
    <br /><br />

    <asp:Label ID="lblMessage" runat="server" Font-Bold="true"></asp:Label>
</div>
                </div>

            </div>
        </div>
    </form>
</body>
</html>
