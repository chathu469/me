<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="My_Project.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
   <!-- <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.bundle.min.js"></script> -->
    <link href="style.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <h1 class="text-center">Please Login to Continue</h1>
                    <div class="input-group" id="username">
                        <span class="input-group-append"><span class="glyphicon glyphicon-user"></span></span>
                    <!--<input type="text" class="form-control" name="user" placeholder="username" />-->
                        <asp:TextBox ID="username1" runat="server" Placeholder="Username" class="form-control"></asp:TextBox>
                    </div>
                    <div class="input-group">
                        <span class="input-group-append"></span>                                       
                       <!-- <input id="Password1" type="password" class="form-control" placeholder="Password" />-->


                        <asp:TextBox ID="password1" runat="server" TextMode="Password" class="form-control" placeholder="Password"></asp:TextBox>


                    </div>
                <div class="row">
                <asp:Button ID="Button_Login" runat="server" OnClick="Button1_Click" Text="Login" class="btn-dark"/>
                </div>

                 <div class="row">
                      <asp:Label ID="messagelabel" runat="server" class="label-danger" Text="Invalid Username or Password" style="color: #FF0000"></asp:Label>
                </div>
                   
               </div>  
            </div>

        </div>
    </form>
</body>
</html>
