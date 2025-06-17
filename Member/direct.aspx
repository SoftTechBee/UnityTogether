<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MasterPage.master" AutoEventWireup="true" CodeFile="direct.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

  <%--  <style>
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
                    <h5 class="card-title">Direct List</h5>
                    <asp:Label ID="lbname" runat="server" Text="" Visible="false"></asp:Label>
                </div>

                <div class="card-body">
                    <div style="overflow: auto; color: #000000;">
                        <asp:GridView ID="grdData" runat="server" AutoGenerateColumns="False" CellPadding="10" PageSize="20" Font-Size="Large" CssClass="table table-bordered table1"
                            GridLines="Both" Width="100%" AllowPaging="True" OnPageIndexChanging="grdData_PageIndexChanging">
                            <Columns>

                                <asp:TemplateField HeaderText="#">
                                    <ItemTemplate>
                                        <%# Container.DataItemIndex + 1 %>
                                    </ItemTemplate>
                                    <ItemStyle Width="10%" />
                                </asp:TemplateField>
                                <asp:BoundField DataField="username" HeaderText="UserName"></asp:BoundField>
                                <asp:BoundField DataField="Name" HeaderText="Wallet"></asp:BoundField>
                                <%-- <asp:boundfield DataField="Mobile" HeaderText="Mobile"></asp:boundfield>--%>
                                <%--    <asp:boundfield DataField="onside" HeaderText="Side"></asp:boundfield>--%>
                                <%--  <asp:boundfield DataField="reffid" HeaderText="Sponsor"></asp:boundfield>--%>
                                <%--  <asp:boundfield DataField="DateOFJOin" DataFormatString="{0:d}" HeaderText="DOA"></asp:boundfield>
                <asp:boundfield DataField="joinamount"  HeaderText="Amount"></asp:boundfield>
                <asp:boundfield DataField="Status" HeaderText="AccountStatus"></asp:boundfield>--%>
                                <asp:BoundField DataField="dateofjoining" DataFormatString="{0:d}" HeaderText="DOJ"></asp:BoundField>
                                <%--  <asp:boundfield DataField="DOA"  DataFormatString="{0:d}" HeaderText="DOA"></asp:boundfield>
                                --%>
                            </Columns>

                        </asp:GridView>

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>



