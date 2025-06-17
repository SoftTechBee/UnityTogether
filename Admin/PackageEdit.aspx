<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="PackageEdit.aspx.cs" Inherits="Admin_setnews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="alert alert-info alert-dismissible" id="info" runat="server" visible="false">
        <h4><i class="icon fa fa-info"></i>Alert!</h4>
        <asp:Label ID="lbinfo" runat="server" Text="Already Inserted........."></asp:Label>
    </div>

    <div class="card">
        <div class="form-horizontal">
            <div class="card-body">
                <h3>Package Details</h3>

                <div class="form-group row mb-2">
               
              

                <div class="form-group row">
                    <div class="col-lg-12">
                        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                            <HeaderTemplate>
                                <table class="table table-bordered table-hover table-responsive">
                                    <tr>
                                        <th>#</th>
                                        <th>Package</th>
                                        <th>Amount</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval("Packid") %></td>
                                    <td>
                                        <asp:Label ID="Package" runat="server" Text='<%#Eval("Product") %>'></asp:Label></td>
                                    <td>
                                        <asp:Label ID="amount" runat="server" Text='<%#Eval("Amount") %>'></asp:Label></td>
                                    <td>  <asp:Label ID="Status" runat="server" Text='<%#Eval("status") %>'></asp:Label></td>
                                    <td>
                                        <asp:Button ID="Button1" runat="server" Text="Update" CommandArgument='<%#Eval("packid") %>' CommandName="Update" CssClass="btn btn-block btn-success" /></td>
                                   </tr>
                            </ItemTemplate>
                            <FooterTemplate>
                                </table>
                            </FooterTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
    </div>
        </div>
    <asp:HiddenField runat="server" ID="hndNewId" />
</asp:Content>

