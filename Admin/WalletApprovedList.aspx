<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="WalletApprovedList.aspx.cs" Inherits="Admin_WalletApprovedList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="alert alert-danger alert-dismissible" id="danger" runat="server" visible="false">
        <h4><i class="icon fa fa-ban"></i>Alert!</h4>
        <asp:Label ID="lbdanger" runat="server" Text="There is  some thing wrong........."></asp:Label>
    </div>

    <div class="alert alert-info alert-dismissible" id="info" runat="server" visible="false">
        <h4><i class="icon fa fa-info"></i>Alert!</h4>
        <asp:Label ID="lbinfo" runat="server" Text="ere is  some thing wrong........."></asp:Label>
    </div>

    <div class="alert alert-warning alert-dismissible" id="warning" runat="server" visible="false">
        <h4><i class="icon fa fa-warning"></i>Alert!</h4>
        <asp:Label ID="lbwarning" runat="server" Text=" Try Again............"></asp:Label>
    </div>

    <div class="alert alert-success alert-dismissible" id="sccess" runat="server" visible="false">
        <h4><i class="icon fa fa-check"></i>Alert!</h4>
        <asp:Label ID="lbsuccess" runat="server" Text="Successfully updated................"></asp:Label>
    </div>

    <div class="card">
        <div class="form-horizontal">
            <div class="card-body">
                <h3>GasFee list </h3>

                <%--<div class=" form-group">
                    <label class="col-lg-2">FromDate</label>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txtfromdate" required="" Type="date" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <label class="col-lg-2">ToDate</label>
                    <div class="col-lg-4">
                        <asp:TextBox ID="txttodate" Type="date" required="" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>--%>

                <div class=" form-group row">
                    <div class="col-lg-8 col-md-3 col-xs-6 ">
                        <asp:TextBox ID="txtsearch" CssClass="form-control" runat="server" Type="date" placeholder="Select Date"></asp:TextBox>
                    </div>

                    <div class="col-md-2 col-xs-6 col-lg-3">
                        <asp:Button ID="btnSeach" runat="server" Text="Search" Height="40px" Width="150px" CssClass="btn btn-block btn-success" OnClick="btnSeach_Click" />
                    </div>
                </div>

                <div class=" form-group row">
                    <div class="col-lg-12" style="overflow: auto;">
                        <table id="example1" class="table table-bordered table-striped table-hover">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>UserName</th>
                                    <th>Amount</th>
                                    <th>Wallet Transfer</th>
                                    <th>Gasfee</th>
                                    <th>DOA</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td><%#Container.ItemIndex+1 %> </td>
                                            <td><%#Eval("username") %></td>
                                            <td><%#Eval("amount") %></td>
                                            <td><%#Eval("Payout") %></td>
                                            <td><%#Eval("AdminCharge") %></td>
                                            <td><%#Eval("DOA") %></td>
                                            <td><%#Eval("status") %></td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th>#</th>
                                    <th>Total</th>
                                    <th><asp:Label ID="lbAmountTotal" runat="server" Text=""></asp:Label></th>
                                    <th><asp:Label ID="lbPayoutTotal" runat="server" Text=""></asp:Label></th>
                                    <th>
                                        <asp:Label ID="lbtotal" runat="server" Text=""></asp:Label>
                                    </th>
                                    <th></th>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>




