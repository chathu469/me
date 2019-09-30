<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View Details Page.aspx.cs" Inherits="My_Project.View_Details_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
   <!-- <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.bundle.min.js"></script> -->
    <link href="style view details.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">                
                 <div class="form-group">
                     <div class="row">
                         <asp:Button ID="Button2" runat="server" Text="Logout" CssClass="active" OnClick="Button2_Click" />
                     </div>
                 <h1 class="text-center">Injector Pressuer Settings</h1>
                 <div class="form-inline">
                 <asp:Label ID="Label1" runat="server" class="label-default" Text="Enter Engine and Nozzle details"></asp:Label>                 
                 <asp:TextBox ID="enginedetails" runat="server" class="form-control"></asp:TextBox>
                  </div>
                 <asp:Button ID="Button1" runat="server" Text="Search" class="btn-default" OnClick="Button1_Click" />
               <div class="row">
                 <asp:Label ID="ATMlabel" runat="server" Text="ATM : " class="text-info"></asp:Label>
                   <asp:Label ID="LabelATMvalue" runat="server" Text="" class="text-info"></asp:Label>

                 </div>
                 
                </div>
              </div>  
            </div>
         
                             
                            
          
    </form>
</body>
</html>
