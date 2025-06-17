<%@ Page Title="" Language="C#" MasterPageFile="~/member/MasterPage.master" AutoEventWireup="true" CodeFile="rptNonworkingPool.aspx.cs" Inherits="User_rptNonworkingPool" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-body">
        <div class="content">
            <div class="alert alert-danger alert-dismissible" id="danger" runat="server" visible="false">
                <h4><i class="icon fa fa-ban"></i>Alert!</h4>
                <asp:Label ID="lbdanger" runat="server" Text="There is  some thing wrong........."></asp:Label>
            </div>

            <div class="container-fluid">
                <div class="card ">
                    <div class="form-horizontal">
                        <div class="card-body">
                            <h3  style="color:#ff0101;">
                                <asp:Label ID="lbhead" runat="server" Text=""></asp:Label> STATUS</h3>
                            <hr />

                            <div class="form-group row">
                                <label class="col-lg-2 col-md-2 col-xs-6 col-sm-6">Select Packages </label>
                                <div class="col-lg-3 col-md-3 col-xs-6 col-sm-6">
                                    <asp:DropDownList runat="server" ID="drppack" OnSelectedIndexChanged="drppack_TextChanged" AutoPostBack="true" CssClass="form-control">
                                        <asp:ListItem Value="0">---- All ----</asp:ListItem>
                                        <asp:ListItem Value="1">Slot-1</asp:ListItem>
                                        <asp:ListItem Value="2">Slot-2</asp:ListItem>
                                        <asp:ListItem Value="3">Slot-3</asp:ListItem>
                                        <asp:ListItem Value="4">Slot-4</asp:ListItem>
                                        <asp:ListItem Value="5">Slot-5</asp:ListItem>
                                        <asp:ListItem Value="6">Slot-6</asp:ListItem>
                                        <asp:ListItem Value="7">Slot-7</asp:ListItem>
                                    
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <hr />

                                                       <div class="form-group">
    <div class="col-lg-12 col-md-12 col-xs-12 col-sm-12" style="overflow: auto;">

        <table id="example1" class="table table-bordered table-striped table-hover ">
            <thead>
                <tr>
                    <th>#</th>
                   
                   <%-- <th>Member</th>--%>
                    <th>Box-NO</th>
                    <th>Slot-NO</th>
                    <th>Place-1</th>
                    <th>Place-2</th>
                    <th>Place-3</th>
                    <th>Place-4</th>
                    <th>Place-5</th>
                  
                </tr>
            </thead>
           
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server" >
                    <ItemTemplate>
                        <tr>
                            <td><%# Container.ItemIndex+1 %></td>
                          
                          <%--  <td><%#Eval("Member") %></td>--%>
                            <td><%#Eval("Poolno") %></td>
                            <td><%#Eval("Levelno") %></td>
                            <td><img src='<%#Eval("m1")%>' height="50px" width="50px"/></td>
                            <td><img src='<%#Eval("m2")%>' height="50px" width="50px"/></td>
                            <td><img src='<%#Eval("m3")%>' height="50px" width="50px"/></td>
                            <td><img src='<%#Eval("m4")%>' height="50px" width="50px"/></td>
                            <td><img src='<%#Eval("m5")%>' height="50px" width="50px"/></td>
                         
                            
                            
                          
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>

          
        </table>
    </div>
</div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

