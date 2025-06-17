<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MasterPage.master" AutoEventWireup="true" CodeFile="rptdwonline.aspx.cs" Inherits="User_rptdwonline" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
 <%--   <style>
        .table1 {
            --bs-table-bg: none !important;
            font-weight: 800 !important;
            --bs-table-color: #fff !important;
        }

        .cardoo {
            background: linear-gradient(to right, #c31432, #240b36) !important;
        }
    </style>--%>
    
    <div class="content-body">
        <!-- Content -->
        <div class="container-fluid">

            <%--<div class=" container">--%>
            <div class="card cardoo">
                <div class="card-header">
                    <h5 class="card-title">All Member Detail</h5>

                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    <div style="overflow: auto; color: #fff;">

                        <asp:GridView ID="grdData" runat="server" AutoGenerateColumns="False" CellPadding="10" PageSize="100" Font-Size="Large" CssClass="table table-bordered table1 "
                            GridLines="Both" Width="100%" AllowPaging="True" OnPageIndexChanging="grdData_PageIndexChanging">

                            <Columns>

                                <asp:TemplateField HeaderText="#">
                                    <ItemTemplate>
                                        <%# Container.DataItemIndex + 1 %>
                                    </ItemTemplate>
                                    <ItemStyle Width="10%" />
                                </asp:TemplateField>
                                 <asp:boundfield DataField="pid" HeaderText="LevelNo"></asp:boundfield>
                                <asp:BoundField DataField="username" HeaderText="Member"></asp:BoundField>
                                <asp:BoundField DataField="Name" HeaderText="Wallet"></asp:BoundField>
                                <asp:BoundField DataField="reffid" HeaderText="Sponsor"></asp:BoundField>
                                <asp:BoundField DataField="DateOFJOin" DataFormatString="{0:d}" HeaderText="DOA"></asp:BoundField>
                                <%--  <asp:boundfield DataField="Upline"  HeaderText="Upline"></asp:boundfield>--%>
                                <%--   <asp:boundfield DataField="side"  HeaderText="Side"></asp:boundfield>--%>
                                <%--   <asp:boundfield DataField="joinamount"  HeaderText="Investment"></asp:boundfield>
                <asp:boundfield DataField="Status" HeaderText="AccountStatus"></asp:boundfield>--%>
                            </Columns>


                        </asp:GridView>

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

