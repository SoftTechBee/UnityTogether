<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MasterPage.master" AutoEventWireup="true" CodeFile="rptslot15Income.aspx.cs" Inherits="User_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

<%--    <style>
        .table1 {
            --bs-table-bg: none !important;
            font-weight: 800 !important;
            --bs-table-color: #fff !important;
        }

        .cardoo {
            background: linear-gradient(to right, #c31432, #240b36) !important;
        }
    </style>--%>

    <div class="alert alert-danger alert-dismissible" id="danger" runat="server" visible="false">
        <h4><i class="icon fa fa-ban"></i>Alert!</h4>
        <asp:Label ID="lbdanger" runat="server" Text="There is  some thing wrong........."></asp:Label>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="card cardoo">
                <div class="card-header">
                    <h5 class="card-title">CURRENCY BOX </h5>
                </div>

                <div class="card-body">
                    <div class=" form-horizontal">
                        <div class=" form-group row">
                            <label class="col-lg-2 col-md-2 col-xs-6 col-sm-6">Select Form  Date </label>
                            <div class="col-lg-3 col-md-3 col-xs-6 col-sm-6">
                                <div class='input-group date' id='datetimepicker6'>
                                    <asp:TextBox ID="txtfromdate" class="form-control" required="" type="date" runat="server" placeholder="DD-MM-YYYY"></asp:TextBox>
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                </div>
                            </div>

                            <label class="col-lg-2 col-md-2 col-xs-6 col-sm-6">Select TO  Date </label>
                            <div class="col-lg-3 col-md-3 col-xs-6 col-sm-6">
                                <div class='input-group date' id='datetimepicker7'>
                                    <asp:TextBox ID="txttodate" class="form-control" required="" type="date" runat="server" placeholder="DD-MM-YYYY"></asp:TextBox>
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                </div>
                            </div>
                            <div class="col-lg-2 col-md-2 col-xs-6 col-sm-6">
                                <asp:Button ID="btnSeach" runat="server" Text="Search" CssClass="btn btn-block btn-primary" OnClick="btnSeach_Click" />
                            </div>
                        </div>
                        <br />
                        <div class="form-group">
                            <div class="col-lg-12 col-md-12 col-xs-12 col-sm-12" style="overflow: auto;">

                                <asp:GridView ID="grdData" runat="server"
                                    AutoGenerateColumns="False" CellPadding="10" PageSize="100" Font-Size="Large" CssClass="table table-bordered table1"
                                    GridLines="Both" Width="100%" AllowPaging="True"
                                    OnPageIndexChanging="grdData_PageIndexChanging" ShowFooter="true">

                                    <Columns>

                                        <asp:TemplateField HeaderText="#">
                                            <ItemTemplate>
                                                <%# Container.DataItemIndex + 1 %>
                                            </ItemTemplate>
                                            <ItemStyle Width="10%" />
                                        </asp:TemplateField>
                                        <%--  <asp:BoundField DataField="username" HeaderText="UserName"></asp:BoundField>
                                        --%>
                                        <asp:BoundField DataField="date" DataFormatString="{0:d}" HeaderText="Date"></asp:BoundField>
                                        <asp:BoundField DataField="Remark" HeaderText="Remark"></asp:BoundField>
                                        <asp:BoundField DataField="Credit" HeaderText="Cr"></asp:BoundField>
                                        <%--<asp:BoundField DataField="Debit" HeaderText="Debit"></asp:BoundField>--%>
                                    </Columns>

                                </asp:GridView>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

