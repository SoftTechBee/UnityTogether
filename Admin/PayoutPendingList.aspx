<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="PayoutPendingList.aspx.cs" EnableEventValidation="true" Inherits="Admin_PayoutPendingList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
       
        
         <div class="alert alert-danger alert-dismissible" id="danger"  runat="server"  visible="false">
              
                <h4><i class="icon fa fa-ban"></i> Alert!</h4>
            <asp:Label ID="lbdanger" runat="server" Text="There is  some thing wrong........."></asp:Label> 
              </div>
              <div class="alert alert-info alert-dismissible" id="info" runat="server"  visible="false">
              
                <h4><i class="icon fa fa-info"></i> Alert!</h4>
               <asp:Label ID="lbinfo" runat="server" Text="ere is  some thing wrong........."></asp:Label>  
             
              </div>
              <div class="alert alert-warning alert-dismissible" id="warning" runat="server"  visible="false">
              
                <h4><i class="icon fa fa-warning"></i> Alert!</h4>
               <asp:Label ID="lbwarning" runat="server" Text=" Try Again............"></asp:Label> 
            
              </div>
              <div class="alert alert-success alert-dismissible" id="sccess" runat="server" visible="false" >
              
                <h4><i class="icon fa fa-check"></i> Alert!</h4>
                  <asp:Label ID="lbsuccess" runat="server" Text="Successfully updated................"></asp:Label>  
              </div>
   
   <div class="card">
                            <div class="form-horizontal">
                                <div class="card-body">
                                    <h4 class="card-title">Withdraw Payment Request List  </h4>
                 <!----form start---->
                     
                   <div class="form-group row">
      <label class="control-label col-lg-3 col-md-3 col-xs-6 ">Status</label>
      <label class="control-label  col-lg-3 col-md-3 col-xs-6 ">Select FromDate</label>
      <label class="control-label col-lg-3 col-md-3 col-xs-6 ">Select ToDate</label>
  </div>

  <div class="form-group row">
      <div class="col-lg-3 col-md-3 col-xs-6 ">
        <asp:DropDownList runat="server" ID="drpstatus" CssClass="form-control">
            <asp:ListItem Value="Process"> Pending</asp:ListItem>
            <asp:ListItem Value="approved"> Success</asp:ListItem>
        </asp:DropDownList>
      </div>

      <div class="col-lg-3 col-md-3 col-xs-6 ">
          <div class='input-group date' id='datetimepicker6'>
              <asp:TextBox ID="txtfromdate" class="form-control" type="date" runat="server" placeholder="Select Form  Date "></asp:TextBox>
              <span class="input-group-addon">
                  <span class="glyphicon glyphicon-calendar"></span>
              </span>
          </div>
      </div>

      <div class="col-lg-3 col-md-3 col-xs-6 ">
          <div class='input-group date' id='datetimepicker7'>
              <asp:TextBox ID="txttodate" class="form-control" type="date" runat="server" placeholder="Select TO  Date "></asp:TextBox>
              <span class="input-group-addon">
                  <span class="glyphicon glyphicon-calendar"></span>
              </span>
          </div>
      </div>

      <div class="col-md-2 col-xs-6 col-lg-3">
          <asp:Button ID="btnSeach" runat="server" Text="Search" Height="40px" Width="150px" CssClass="btn btn-block btn-success" OnClick="btnSeach_Click"/>
      </div>
  </div>
              <br />
             
       <div class="form-group row">
                 
                    <div class="col-sm-12" style="overflow:auto;">
                          <table class="table table-bordered " >
      
            <tr>
                  <th>#</th>
                   <th>Reject</th>
                  <th>Member</th>                  
                  <th>Wallet</th>                  
                  <th>TransferWallet</th>                  
                
               
                 <th>Amount</th>
                
                 <th>Fee</th>            
                        
                  <th>Payout</th>
                
                  <th>Date</th>
              
                 <th>Status</th>
                
                
                
                <%--<th>Approved</th>--%>
             
           
            </tr>
       
   
    <asp:Repeater ID="Repeater1" runat="server"  OnItemCommand="Repeater1_ItemCommand">
      
         <ItemTemplate>
             <tr><td> <%#Container.ItemIndex+1 %> </td>
                   <td> <asp:Button ID="Button2" runat="server" Text="Reject" CssClass="btn  btn-block  btn-danger" CommandArgument='<%#Eval("Rid") %>' CommandName="delete" /> </td>
       
                 <td>
                 <asp:Label ID="lbpacktype" runat="server" Text='<%#Eval("username") %>'></asp:Label></td>

                  <td>
                 <asp:Label ID="lbuname" runat="server" Text='<%#Eval("name") %>'></asp:Label></td>
               <td><%#Eval("wallet") %></td>
                 
               
                  <td> <asp:Label ID="lbamt" runat="server" Text='<%#Eval("Amount") %>'></asp:Label></td>
                    
                  <td> <asp:Label ID="Label2" runat="server" Text='<%#Eval("AdminCharge") %>'></asp:Label></td>                   
                   
                  <td> <asp:Label ID="lbpayout" runat="server" Text='<%#Eval("Payout") %>'></asp:Label></td>
                  <td><%#DataBinder.Eval(Container.DataItem, "DOR", "{0:M/d/yy}")%></td>
               
                  <td><%#Eval("status") %></td>
              
             <%--    <td> <asp:Button ID="Button1" runat="server" Text="Approved" CssClass="btn  btn-block  btn-warning" CommandArgument='<%#Eval("Rid") %>' CommandName="Click" /> </td>
               --%>
                 </tr>

         </ItemTemplate>
      
    </asp:Repeater>
    
 </table>
</div>

    </div></div></div>
         </div>
</asp:Content>
