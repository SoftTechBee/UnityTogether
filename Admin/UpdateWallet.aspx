<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="UpdateWallet.aspx.cs" Inherits="Member_UpdateWallet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
 
    <div class="row">
        <div class="col-lg-12">

            <div class="alert text-white bg-warning" id="danger" runat="server" visible="false" role="alert">
                <div class="iq-alert-icon">
                    <i class="ri-information-line"></i>
                </div>
                <div class="iq-alert-text">
                    <asp:Label ID="lbdanger" runat="server" Text="There is Something Wrong !!"></asp:Label>
                </div>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <i class="ri-close-line"></i>
                </button>
            </div>

            <div class="alert text-white bg-warning" id="info" runat="server" visible="false" role="alert">
                <div class="iq-alert-icon">
                    <i class="ri-information-line"></i>
                </div>
                <div class="iq-alert-text">
                    <asp:Label ID="lbinfo" runat="server" Text="There is Something Wrong !!"></asp:Label>
                </div>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <i class="ri-close-line"></i>
                </button>
            </div>

            <div class="alert text-white bg-warning" id="warning" runat="server" visible="false" role="alert">
                <div class="iq-alert-icon">
                    <i class="ri-information-line"></i>
                </div>
                <div class="iq-alert-text">
                    <asp:Label ID="lbwarning" runat="server" Text="There is Something Wrong !!"></asp:Label>
                </div>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <i class="ri-close-line"></i>
                </button>
            </div>

            <div class="alert text-white bg-warning" id="sccess" runat="server" visible="false" role="alert">
                <div class="iq-alert-icon">
                    <i class="ri-information-line"></i>
                </div>
                <div class="iq-alert-text">
                    <asp:Label ID="lbsuccess" runat="server" Text="There is Something Wrong !!"></asp:Label>
                </div>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <i class="ri-close-line"></i>
                </button>
            </div>

              <input type="hidden" id="hndsponser" runat="server" />
              <input type="hidden" id="hndPackNo" runat="server" />

            <div class="card">
                <div class="card-header bg-danger-light rounded">
                    Update Wallet Address
                </div>
                <div class="card-body">
                     <div class="form-group row">


                    <div class="col-2 col-sm-6 col-lg-2 col-md-2">
                        <label class="control-label" for="inputSuccess">Enter Member ID</label>
                    </div>
                    <div class="col-lg-6">

                        <asp:TextBox ID="txtSponsor" runat="server" AutoPostBack="true" OnTextChanged="txtSponsor_TextChanged" class="form-control" placeholder="Enter Member ID"></asp:TextBox>
                    </div>

                </div><br />
                         <div class="form-group row">


    <div class="col-2 col-sm-6 col-lg-2 col-md-2">
        <label class="control-label" for="inputSuccess">Wallet</label>
    </div>
    <div class="col-lg-6">
   <asp:Label runat="server" ID="lbwallet" CssClass="form-control"></asp:Label>
    </div>

</div><br />

                    <div class=" form-group row">
                        <label class="col-2 col-sm-6 col-lg-2 col-md-2">New Wallet Address</label>
                        <div class="col-6 col-sm-6 col-lg-6 col-md-6">
<asp:TextBox runat="server" ID="txtNewWallet" AutoPostBack="true" OnTextChanged="txtHashcode_TextChanged" CssClass="form-control"></asp:TextBox>
                        </div>
                        </div><br />
                    
                     <div class="form-group row">
                           <div class="col-6 col-sm-6 col-lg-6 col-md-6">
                      <asp:Button ID="bntsubmit" runat="server" Text="Update" CssClass="btn btn-block btn-success" OnClick="bntsubmit_Click" />
                               </div>
                 
                  </div>    

            </div>
        </div>
        </div>
        </div>
</asp:Content>

