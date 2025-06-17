<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MasterPage.master" AutoEventWireup="true" CodeFile="UplineTreeview.aspx.cs" Inherits="Admin_Account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page-body">
          <!-- Container-fluid starts-->
  
      <div class="row">
        <div class="col-xs-12">
     <div class="box">
            <div class="box-header">
              <h3 class="box-title"> Tree View</h3>
               
            </div>
            <!-- /.box-header -->
            <div class="box-body text-center" >
               
       
              
                <div class="col-12 col-md-12">
     <a href="#" style="text-decoration: none;">
         <div class="card custom-card5">
             <div class="card-body" style="padding: 20px 20px !important;">
                
                 <h5 class="text-white text-center"> UserName=
                     <asp:Label ID="lbusername" runat="server" Text="N/A"></asp:Label>&nbsp 
                 </h5>  <%--  <h5 class="text-warning text-center">UserWallet=
                     <asp:Label ID="lbUserWallet" runat="server" Text="N/A"></asp:Label>&nbsp 
                 </h5> --%> <h5 class="text-success text-center">Upline=
                     <asp:Label ID="lbUpline" runat="server" Text="N/A"></asp:Label>&nbsp 
                 </h5> <%-- <h5 class="text-danger text-center">ReffWallet=
                     <asp:Label ID="lbReffWallet" runat="server" Text="N/A"></asp:Label>&nbsp 
                 </h5>--%>
                 <a href="#" class="btn btn-sm" style="background: #243b2a; border-radius: 20px;">
                      <asp:Button ID="Button1" runat="server" Text="ViewUpline" CssClass="btn  btn-block  btn-warning" OnClick="Button1_Click" />
                        
                   <%--  <img src="../Dash/images/activity_green.png" style="width: 20px;">--%>
                 </a>
             </div>
         </div>
     </a>
 </div>
                
              
                
              
                <!-------------------------END --------------->
            
               
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    <!-- /.content -->
  </div>
    

<!-- page script -->
      
</asp:Content>


