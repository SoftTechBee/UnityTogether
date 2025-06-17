<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="NewReg.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
          <!-- Container-fluid starts-->
    <!-- this page js -->
            <div class="box-body">

                <div class="alert alert-danger alert-dismissible" id="danger" runat="server" visible="false">
              
                <h4><i class="icon fa fa-ban"></i>Alert!</h4>
                <asp:Label ID="lbdanger" runat="server" Text="There is  some thing wrong........."></asp:Label>
            </div>
            <div class="alert alert-info alert-dismissible" id="info" runat="server" visible="false">
              
                <h4><i class="icon fa fa-info"></i>Alert!</h4>
                <asp:Label ID="lbinfo" runat="server" Text="ere is  some thing wrong........."></asp:Label>

            </div>
            <div class="alert alert-warning alert-dismissible" id="warning" runat="server" visible="false">
              
                <h4><i class="icon fa fa-warning"></i>Alert!</h4>
                <asp:Label ID="lbwarning" runat="server" Text=" Try Again............"></asp:Label>

            </div>
            <div class="alert alert-success alert-dismissible" id="sccess" runat="server" visible="false">
              
                <h4><i class="icon fa fa-check"></i>Alert!</h4>
                <asp:Label ID="lbsuccess" runat="server" Text="Successfully updated................"></asp:Label>
            </div>
                </div>
              
    

               <div class="row">
             
             <div class="col-lg-12">
                  <div class="card">
            <div class="form-horizontal">
                                <div class="card-body">
                                    <h4 class="card-title text-primary">Registration Details</h4>
                                    <br />
                 <!----form start---->
                                   <hr />
                                     <div class=" form-group row">
                  <label class="control-label  col-lg-2">Enter Sponsor ID</label>
                             <div class="col-lg-10">
                    <asp:TextBox ID="lbSponser" AutoPostBack="true" OnTextChanged="drpSponser_SelectedIndexChanged" runat="server" Text="" placeholder="Enter Sponsor ID" required="" CssClass="form-control"></asp:TextBox>          
               <asp:Label runat="server" ID="lbSponserName" Text="" CssClass="label  label-success"></asp:Label>
                                 </div>
                             
                </div>
                                     <br />
                            <div class=" form-group row">
                  <label class="control-label  col-lg-2">Name</label>
                             <div class="col-lg-10">
                   <asp:TextBox ID="txtFirstName" runat="server"  ReadOnly="true"  class="form-control"  Text="Unity Partner"></asp:TextBox>              
                </div>
                             
                </div>
                                     <br />
                                     <div class="form-group row">
                                      
                      <label class="control-label  col-lg-2">HashCode </label>
                             <div class="col-lg-10">
                   <asp:TextBox ID="txtHashCode" runat="server" required=""    class="form-control" placeholder="Enter HashCode"></asp:TextBox>              
                </div> 
                            
                         </div>
                  <br />
                         <div class="form-group row">
                                      
                      <label class="control-label  col-lg-2">User Wallet </label>
                             <div class="col-lg-10">
                   <asp:TextBox ID="txtwallet" runat="server" required=""    class="form-control" placeholder="Enter User Provide Wallet Address"></asp:TextBox>              
                </div> 
                            
                         </div>
                      
               
                <br />
                          
                          <div class="box-footer">
                              <center>
                 <asp:Button ID="bntsubmit" OnClick="bntsubmit_Click" OnClientClick="return Validate();" runat="server" Text="Register" Width="200px" CssClass=" btn bg-success btn-flat btn-lg"  />  
               
                      
                      </center>          
                </div>
                </div>
                 </div>
             
          </div>
                       
            </div>

      </div>
      
    
</asp:Content>

