<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Security_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet"/>
     <link href='https://fonts.googleapis.com/css?family=Ubuntu:400,500,700,700italic,500italic,400italic' rel='stylesheet' type='text/css'/>
   

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style type="text/css" runat="server">
        body{
            background-image: url("../Images/login.jpg");
            background-color:#22a2bb;
            background-size:cover;
            /*font-family:'Ubuntu', Cambria;*/
        }
        table {
            background: rgba(255,255,255,0.6);
            border-collapse: collapse;
            border-radius:3px;
            /*position:relative;
        left:33%;*/
            margin: 0 auto;
            margin-top: 20%;
            width: 400px;
        }
        tr , td {
            padding-top:10px;
            padding-bottom:20px;
        }
        .logo-login {
            margin: 0 auto;
        }
        #FailureText {
            color:red;
        }
    </style>
</head>
<body>
    <div class="container">      
        <div class="row">           
            <form id="form1" runat="server">
               
                <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/Default.aspx">
                    <LayoutTemplate>

                        <div class="col-md-12">
                            <h2 class="text-center" style="font-family:Ubuntu">Balancika <strong>HRM</strong></h2>                           
                            <div class="form-group has-feedback">                               
                                <asp:TextBox runat="server" ID="UserName" class="form-control" placeholder="Username"></asp:TextBox>
                                <span class="glyphicon glyphicon-user form-control-feedback"></span>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ValidationGroup="Login1" ToolTip="User Name is required." ID="UserNameRequired"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group has-feedback">                              
                                <asp:TextBox runat="server" TextMode="Password" ID="Password" class="form-control" placeholder="Password"></asp:TextBox>
                                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ValidationGroup="Login1" ToolTip="Password is required." ID="PasswordRequired"></asp:RequiredFieldValidator>

                            </div>
                           
                            <div class="row">
                                <div class="col-xs-8">
                                    <asp:CheckBox runat="server" Checked="True" Text=" Remember me next time." ID="RememberMe"></asp:CheckBox><br />
                                    
                                         <asp:Literal runat="server" ID="FailureText" EnableViewState="False" ClientIDMode="Static"></asp:Literal>
                                                             
                                   
                                </div>
                                <!-- /.col -->
                                <div class="col-xs-4">
                                    <asp:Button runat="server" CommandName="Login" Text="Log In" ValidationGroup="Login1" ID="LoginButton" CssClass="btn btn-success"></asp:Button>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Button runat="server" Text="Create User" ID="btnCreateUser" CssClass="btn btn-info" OnClick="btnCreateUser_Click"></asp:Button>
                                </div>
                                <!-- /.col -->
                            </div>


                        </div>
                    </LayoutTemplate>
                </asp:Login>
            </form>

            </div>
            <!-- /.login-box-body -->
        </div>

        <!-- /.login-box -->
</body>
</html>
