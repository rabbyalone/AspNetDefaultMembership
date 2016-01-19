<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateUser.aspx.cs" Inherits="Security_CreateUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="well">
                    <h4>Create User Page</h4>
                </div>
                <div class="col-md-12">
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <strong>Create User</strong>
                        </div>
                        <div class="panel-body">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="control-label">User Name: </label>
                                    <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Password: </label>
                                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Email: </label>
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Is Approved: </label>
                                    <asp:CheckBox ID="chkApprove" runat="server" />
                                </div>
                                <div class="form-group">
                                    <asp:Button ID="btnSetUser" runat="server" Text="Create User" CssClass="btn btn-success" OnClick="btnSetUser_Click" />
                                    <asp:Label ID="lblMessage" runat="server" Visible="false" CssClass="alert alter-success"></asp:Label>
                                </div>
                                
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="col-md-12">
                                <asp:GridView ID="gridAllUsers" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered">
                                    <Columns>
                                        <asp:BoundField DataField="UserName" HeaderText="User Name"></asp:BoundField>
                                        <asp:BoundField DataField="Email" HeaderText="Email"></asp:BoundField>
                                        <asp:BoundField DataField="CreationDate" HeaderText="Creation Date"></asp:BoundField>
                                        <asp:BoundField DataField="IsApproved" HeaderText="IsApproved"></asp:BoundField>
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
