<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="rptLapseIncome.aspx.cs" Inherits="Admin_rptlevelIncome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="alert alert-danger alert-dismissible" id="danger" runat="server" visible="false">
        <h4><i class="icon fa fa-ban"></i>Alert!</h4>
        <asp:Label ID="lbdanger" runat="server" Text="There is  some thing wrong........."></asp:Label>
    </div>

    <div class="card">
        <div class="form-horizontal">
            <div class="card-body">
                <div class="form-group row mb-2">
                    <div class="col-lg-10">
                        <h2 class="card-title"> Pool Level Income</h2>
                    </div>

                    <div class="col-lg-2">
                        <asp:Button ID="btnExportToExcel" CssClass="btn btn-block  btn-dark" Text="ExportToExcel" OnClick="btnExportToExcel_Click" runat="server" />
                    </div>
                </div>
                <div class="form-group row mb-2">

                    <label class="control-label  col-lg-2 col-md-3 col-xs-6 ">FromDate</label>
                    <div class="col-lg-3 col-md-3 col-xs-6 ">
                        <div class='input-group date' id='datetimepicker6'>
                            <asp:TextBox ID="txtfromdate" class="form-control" type="date" runat="server" placeholder="Select Form  Date "></asp:TextBox>
                        </div>
                    </div>

                    <label class="control-label col-lg-2 col-md-3 col-xs-6 ">ToDate</label>
                    <div class="col-lg-3 col-md-3 col-xs-6 ">
                        <div class='input-group date' id='datetimepicker7'>
                            <asp:TextBox ID="txttodate" class="form-control" type="date" runat="server" placeholder="Select TO  Date "></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-2 col-xs-6 col-lg-2">
                        <asp:Button ID="btnSeach" runat="server" Text="Search" Height="40px" Width="150px" CssClass="btn btn-block btn-success" OnClick="btnsearch_Click" />
                    </div>
                </div>


                <div class="form-group">
                    <div class="col-lg-12 col-md-12 col-xs-12 col-sm-12" style="overflow: auto;">

                        <table id="example1" class="table table-bordered table-striped table-hover ">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>UserName</th>
                                    <th>Amount</th>
                                    <th>Date</th>
                                    <th>Remark</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td><%# Container.ItemIndex+1 %></td>
                                            <td><%#Eval("Username") %></td>
                                            <td><%#Eval("credit") %></td>
                                            <td><%#DataBinder.Eval(Container.DataItem, "date", "{0:dd/MM/yyyy}")%></td>
                                            <td><%#Eval("remark") %></td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th>#</th>
                                    <th>Total</th>
                                    <th>
                                        <asp:Label ID="lbtotal" runat="server" Text=""></asp:Label>
                                    </th>
                                    <th></th>
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

