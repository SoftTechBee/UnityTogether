<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="rptPoolMemberStatus.aspx.cs" Inherits="User_rptPoolMemberStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-body">
        <!-- Content -->
        <div class="content">
            <div class="alert alert-danger alert-dismissible" id="danger" runat="server" visible="false">

                <h4><i class="icon fa fa-ban"></i>Alert!</h4>
                <asp:Label ID="lbdanger" runat="server" Text="There is  some thing wrong........."></asp:Label>
            </div>

            <div class="container-fluid">
                <div class="card ">
                    <div class="form-horizontal">
                        <div class="card-body">
                            <h3 class="text-danger">Slot Filling Status</h3>

                            <hr />

                            <div class="form-group row">
                                <label class="col-lg-2 col-md-2 col-xs-6 col-sm-6">Select Packages </label>
                                <div class="col-lg-3 col-md-3 col-xs-6 col-sm-6">
                                    <asp:DropDownList runat="server" ID="drppack" OnSelectedIndexChanged="drppack_TextChanged" AutoPostBack="true" CssClass="form-control">
                                        <asp:ListItem Value="0">- All -</asp:ListItem>
                                        <asp:ListItem Value="1">Slot-1</asp:ListItem>
                                        <asp:ListItem Value="2">Slot-2</asp:ListItem>
                                        <asp:ListItem Value="3">Slot-3</asp:ListItem>
                                        <asp:ListItem Value="4">Slot-4</asp:ListItem>
                                        <asp:ListItem Value="5">Slot-5</asp:ListItem>
                                        <asp:ListItem Value="6">Slot-6</asp:ListItem>
                                        <asp:ListItem Value="7">Slot-7</asp:ListItem>
                                        <asp:ListItem Value="8">Slot-8</asp:ListItem>
                                        <asp:ListItem Value="9">Slot-9</asp:ListItem>
                                        <asp:ListItem Value="10">Slot-10</asp:ListItem>
                                        <asp:ListItem Value="11">Slot-11</asp:ListItem>
                                        <asp:ListItem Value="12">Slot-12</asp:ListItem>
                                        <asp:ListItem Value="13">Slot-13</asp:ListItem>
                                       
                                    </asp:DropDownList>
                                </div>

                                   <div class="col-lg-3 col-md-3 col-xs-6 ">
                                       <asp:TextBox ID="txtsearch" Type="date" CssClass="form-control" runat="server" placeholder="Enter UserName"
                                           OnTextChanged="txtsearch_TextChanged" AutoPostBack="true"></asp:TextBox>
                                   </div>

   

                            </div>
                            <hr />
                            <div class="form-group row">
                                <div class="col-lg-12" style="overflow: auto;">


                                    <asp:GridView ID="grdData" runat="server" AutoGenerateColumns="False" CellPadding="10" PageSize="100" Font-Size="Medium" CssClass=" table-bordered table-hover"
                                        GridLines="Both" Width="100%" AllowPaging="True" OnPageIndexChanging="grdData_PageIndexChanging">

                                        <Columns>


                                            <asp:TemplateField HeaderText="#" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                                <ItemTemplate>
                                                    <%# Container.DataItemIndex + 1 %>
                                                </ItemTemplate>
                                                <ItemStyle Width="10%" />
                                            </asp:TemplateField>
                                            
                                            <asp:BoundField DataField="username" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center" HeaderText="Username"></asp:BoundField>
                                            <asp:BoundField DataField="PoolNo" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center" HeaderText="Slot NO"></asp:BoundField>
                                            <asp:BoundField DataField="amount" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center" HeaderText="amount"></asp:BoundField>
                                            <asp:BoundField DataField="hashcode" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center" HeaderText="hashcode"></asp:BoundField>
                                            <asp:BoundField DataField="date" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center" HeaderText="DOI"></asp:BoundField>
                                           
                                        </Columns>


                                    </asp:GridView>
                                </div>
                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

