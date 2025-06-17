<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MasterPage.master" AutoEventWireup="true" CodeFile="WithdrawRequestlist.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%-- Danger Alert --%>
    <div class="alert alert-danger solid alert-dismissible fade show" id="danger" runat="server" visible="false">
        <svg viewBox="0 0 24 24" width="24 " height="24" stroke="currentColor" stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round" class="me-2">
            <polygon points="7.86 2 16.14 2 22 7.86 22 16.14 16.14 22 7.86 22 2 16.14 2 7.86 7.86 2"></polygon><line x1="15" y1="9" x2="9" y2="15"></line><line x1="9" y1="9" x2="15" y2="15"></line></svg>
        <strong>Error!</strong>
        <asp:Label ID="lbdanger" runat="server" Text="Error !!! Something Went Wrong"></asp:Label>
        <%-- <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="btn-close">--%>
        </button>
    </div>

   <%-- <style>
        .table1 {
            --bs-table-bg: none !important;
            font-weight: 800 !important;
            --bs-table-color: #fff !important;
        }

        .cardoo {
            background: linear-gradient(to right, #c31432, #240b36) !important;
        }
    </style>--%>

    <div class="row">
        <div class="col-lg-12">
            <div class="card cardoo">
                <div class="card-header">
                    <h5 class="card-title">Withdraw Details</h5>
                </div>

                <div style="overflow: auto; color: #fff;">


                    <div class="col-lg-12 col-md-12 col-xs-12 col-sm-12" style="overflow: auto;">
                        <asp:GridView ID="grdData" runat="server"
                            AutoGenerateColumns="False" CellPadding="10" PageSize="10" Font-Size="Large" CssClass="table table-bordered table1 "
                            GridLines="Both" Width="100%" AllowPaging="True"
                            OnPageIndexChanging="grdData_PageIndexChanging" ShowFooter="true">
                            <Columns>

                                <asp:TemplateField HeaderText="#">
                                    <ItemTemplate>
                                        <%# Container.DataItemIndex + 1 %>
                                    </ItemTemplate>
                                    <ItemStyle Width="10%" />
                                </asp:TemplateField>
                                <asp:BoundField DataField="username" HeaderText="MemberID"></asp:BoundField>
                                <asp:BoundField DataField="Amount" HeaderText="Amount"></asp:BoundField>
                                <%--  <asp:BoundField DataField="AdminCharge" HeaderText="AdminCharge"></asp:BoundField>--%>
                                <asp:BoundField DataField="Payout" HeaderText="WalletTransfer"></asp:BoundField>
                               <%-- <asp:BoundField DataField="Transactionid" HeaderText="TransactionNo"></asp:BoundField>--%>
                                <%--   <asp:BoundField DataField="Wallet" HeaderText="Wallet Address"></asp:BoundField>--%>
                                <asp:BoundField DataField="DOR" DataFormatString="{0:d}" HeaderText="DateOfAction"></asp:BoundField>
                                <%--<asp:BoundField DataField="Status" HeaderText="Status"></asp:BoundField>--%>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>



