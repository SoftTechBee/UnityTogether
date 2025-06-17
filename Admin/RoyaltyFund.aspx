<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="RoyaltyFund.aspx.cs" Inherits="Admin_rptlevelIncome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="alert alert-danger alert-dismissible" id="danger" runat="server" visible="false">

        <h4><i class="icon fa fa-ban"></i>Alert!</h4>
        <asp:Label ID="lbdanger" runat="server" Text="There is  some thing wrong........."></asp:Label>
    </div>
    <div class="card">
        <div class="form-horizontal">
            <div class="card-body">
                <div class=" form-group row">
                    <div class=" col-lg-10">
                        <h2 class="card-title">Royalty Fund  </h2>
                    </div>
                 
                </div>
                <div class="form-group row">
                </div>
                <!----form start---->
                <div class=" form-group row">
                                                           <label class="  control-label  col-lg-3 col-md-3 col-xs-6 ">Select FromDate</label>
                                          <label class="  control-label col-lg-3 col-md-3 col-xs-6 ">Select ToDate</label>
                </div>
                <div class=" form-group row">
                   
                     <div class="ccol-lg-3 col-md-3 col-xs-6 ">
      
            <div class='input-group date' id='datetimepicker6'>
                <asp:TextBox ID="txtfromdate" class="form-control"  type="date" runat="server" placeholder="Select Form  Date " ></asp:TextBox>
                 <span class="input-group-addon">
                    <span class="glyphicon glyphicon-calendar"></span>
                </span>
            </div>
      
    </div>

                    <div class="col-lg-3 col-md-3 col-xs-6 ">
     
           
            <div class='input-group date' id='datetimepicker7'>
                 <asp:TextBox ID="txttodate" class="form-control"  type="date" runat="server" placeholder="Select TO  Date " ></asp:TextBox>
               <span class="input-group-addon">
                    <span class="glyphicon glyphicon-calendar"></span>
                </span>
          
        </div>
    </div>
                    <div class="col-md-2 col-xs-6 col-lg-3">

                        <asp:Button ID="btnSeach" runat="server" Text="Search" Height="40px" Width="150px" CssClass="btn btn-block btn-success" OnClick="btnsearch_Click" />

                    </div>
                </div>
                <hr />

                <div class="form-group">
                    <div class="col-lg-12 col-md-12 col-xs-12 col-sm-12" style="overflow: auto;">

                        <table id="example1" class="table table-bordered table-striped table-hover ">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Dated</th>
                                    <th>RoyaltyFund</th>
                                    <th>AdminFund</th>
                                    <th>Buyers</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">

                                    <ItemTemplate>
                                        <tr>
                                            <td><%# Container.ItemIndex+1 %></td>

                                            <td><%#Eval("Date") %></td>
                                            <td><%#Eval("fund") %></td>
                                            <td><%#Eval("AdminFund") %></td>


                                            <td><%#Eval("rankid") %></td>
                                        </tr>
                                    </ItemTemplate>

                                </asp:Repeater>
                            </tbody>
                             <tfoot>
                <tr>
                       <th >#</th>
                 
                  <th>Total</th>
                               <th><asp:Label ID="fund" runat="server" Text=""></asp:Label> </th>
                               <th><asp:Label ID="adminfund" runat="server" Text=""></asp:Label> </th>
                               <th><asp:Label ID="rankid" runat="server" Text=""></asp:Label> </th>
  
                </tr>
                </tfoot>
                        </table>

                    </div>
                </div>
            </div>
        </div>
        <!-- /.box-body -->
    </div>
    <!-- /.box -->
   
    <!-- /.content -->



    <!-- page script -->
</asp:Content>

