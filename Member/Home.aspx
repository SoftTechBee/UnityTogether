<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Member_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <style>
        .custom-card1 {
            background: linear-gradient(200deg, #ff0101b5, #ed008ccf, #00adefc7, #91d40cdb);
            box-shadow: 8px 8px 12px 0px rgb(173 173 173 / 75%);
            border-radius: 25px;
        }

        .custom-card2 {
            background: linear-gradient(160deg, #ff0101b5, #ed008ccf, #00adefc7, #91d40cdb);
            box-shadow: 8px 8px 12px 0px rgb(173 173 173 / 75%);
            border-radius: 25px;
        }

        .custom-card3 {
            background: linear-gradient(200deg, #ff0101b5, #ed008ccf, #00adefc7, #91d40cdb);
            box-shadow: 8px 8px 12px 0px rgb(173 173 173 / 75%);
            border-radius: 25px;
        }

        .custom-card4 {
            background: linear-gradient(160deg, #ff0101b5, #ed008ccf, #00adefc7, #91d40cdb);
            box-shadow: 8px 8px 12px 0px rgb(173 173 173 / 75%);
            border-radius: 25px;
        }

        .custom-card5 {
            background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(39,244,176,0.30575980392156865) 35%, rgba(0,212,255,1) 100%);
            box-shadow: 8px 8px 12px 0px rgb(173 173 173 / 75%);
            border-radius: 25px;
        }
    </style>

    <script src="../myjs/jquery.min.js"></script>
    <script src="../myjs/Home.js"></script>

    
                        <section class="bg-diagonalLight eth custom-card6">
                            <div class="row">
                                <div class="col-lg-12 col-sm-12">
                                    <div class="row eth-id pt-4">
                                        <div class="col-12 text-yellow text-white text-center">
                                            <h3>Referral Link :<h4><a id="btnCopy0" class="text-whiteLight float-center mx-auto d-block text-center" style="cursor: pointer; color: rgba(255, 255, 255, 0.5);font-size: 14px;" title="Copy"
                                                onclick="script:myFunction('https://unitytogether.live/register.aspx?Sponsor=<%=SessionData.Get<string>("newuser") %>')">https://unitytogether.live/register.aspx?Sponsor=<%=SessionData.Get<string>("newuser") %>&nbsp <i class="fas fa-copy"></i>
                                            </a></h4>
                                            </h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>

    <div class="row justify-content-center">

          <div class="col-12 col-md-12 ">
            <div class="card card_bg" style="background: linear-gradient(130deg, #020c1ee8, #324998);">
                <div class="card-body pt-4 pb-2 px-5">
                    <div class="row">
                       <div class="col-12 col-md-6">
                            <span style="font-weight: bold; font-size: 20px;">Unity Packages</span>
                        </div>
                      <%--  <div class="col-6 col-md-6">
                            <span class="card-title float-right pb-3">
                                <asp:Label ID="lbM4Income" runat="server" Text="0"></asp:Label>&nbsp USDT<i class="fas fa-arrow-circle-right" style="rotate: -35deg;"></i></span>
                        </div>--%>
                    </div>
                    <hr />
                    <div class="row">
                        <ul class="col-12 col-lg-12 d-flex flex-wrap align-items-center justify-content-center " id="s1list">
                        </ul>
                      <%--  <div class="col-12 col-lg-12">
                            <center><a href="M4Page.aspx" class="btn mb-3" style="background: #ff0101; color: #fff;">View &nbsp<i class="fas fa-arrow-circle-right" style="rotate: -35deg;"></i></a></center>
                        </div>--%>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-12 col-md-4">
            <a href="#" style="text-decoration: none;">
                <div class="card custom-card5">
                    <div class="card-body" style="padding: 20px 20px !important;">
                        <p class="text-white text-center">Direct Income</p>
                        <h5 class="text-white text-center">
                            <asp:Label ID="lbdirectIncome" runat="server" Text="0"></asp:Label>&nbsp USDT
                        </h5>
                     
                    </div>
                </div>
            </a>
        </div>

        <div class="col-12 col-md-4">
            <a href="#" style="text-decoration: none;">
                <div class="card custom-card5">
                    <div class="card-body" style="padding: 20px 20px !important;">
                        <p class="text-white text-center">Level Income</p>
                        <h5 class="text-white text-center">
                            <asp:Label ID="lbpoolincome" runat="server" Text="0"></asp:Label>&nbsp USDT
                        </h5>
                      
                    </div>
                </div>
            </a>
        </div>

        <%--<div class="col-12 col-md-3">
            <a href="#" style="text-decoration: none;">
                <div class="card custom-card5">
                    <div class="card-body" style="padding: 20px 20px !important;">
                        <p class="text-white text-center">Royalty Income</p>
                        <h5 class="text-white text-center"> <asp:Label ID="lbroyalty" runat="server" Text="0"></asp:Label>&nbsp USDT</h5>
                       
                    </div>
                </div>
            </a>
        </div>--%>
         <div class="col-12 col-md-4">
            <a href="#" style="text-decoration: none;">
                <div class="card custom-card5">
                    <div class="card-body" style="padding: 20px 20px !important;">
                        <p class="text-white text-center">Reward Income</p>
                        <h5 class="text-white text-center"> <asp:Label ID="lbrewardincome" runat="server" Text="0"></asp:Label>&nbsp USDT</h5>
                       
                    </div>
                </div>
            </a>
        </div>

      
          
        <div class="col-12 col-md-6">
            <div class="card" style="background: #000000a3;; color: #fff; border-radius: 25px;" onclick="window.location.href = 'rptlevelincome.aspx'">
                <div class="card-body" style="padding: 20px 20px !important;">
                    <p class="txt_muted">RECIEVED INCOME</p>
                    <h5 class="text-white">
                        <asp:Label ID="lbrecievedIncome" runat="server" Text="0"></asp:Label>&nbsp USDT
                    </h5>
                    <a href="account.aspx" class="btn btn-sm" style="background: #243b2a; border-radius: 20px; float: right">
                        View
                    </a>
                </div>
            </div>
        </div>

        <div class="col-12 col-md-6">
            <div class="card" style="background: #000000a3;; color: #fff; border-radius: 25px;" onclick="window.location.href = 'rptslot15Income.aspx'">
                <div class="card-body" style="padding: 20px 20px !important;">
                    <p class="txt_muted">HOLD INCOME </p>
                    <h5 class="text-white">
                        <asp:Label ID="lbHoldIncome" runat="server" Text="0"></asp:Label>&nbsp USDT
                    </h5>
                    <a href="accounthold.aspx" class="btn btn-sm" style="background: #243b2a; border-radius: 20px; float: right">
                        View
                    </a>
                </div>
            </div>
        </div>

     
       
					<div class="col-12 col-md-12" style="overflow:auto!important">
          <div class="card card_bg" style="background: linear-gradient(130deg, #020c1ee8, #324998);">
                <div class="card-body pt-4 pb-2 px-5">
              
								<h6 class="card-title">PackageWise Income</h6>
							
                        <table  class="table table-responsive  table-bordered table-hover ">
                            <thead>
                                <tr>
                                    <th scope="col">1</th>
                                    <th  class="text-warning fw-bold" scope="col"><b>PACKAGE-1</b></th>
                                     <th class="text-warning fw-bold" scope="col"><asp:Label runat="server" ID="lbpool1" Text="0.00"></asp:Label> USDT</th>
                                 </tr>
 <tr>
                                    <th scope="col">2</th>
                                    <th  class="text-warning fw-bold" scope="col"><b>PACKAGE-2</b></th>
                                     <th class="text-warning fw-bold" scope="col"><asp:Label runat="server" ID="lbpool2" Text="0.00"></asp:Label> USDT</th>
                                 </tr>
 <tr>
                                    <th scope="col">3</th>
                                    <th  class="text-warning fw-bold" scope="col"><b>PACKAGE-3</b></th>
                                     <th class="text-warning fw-bold" scope="col"><asp:Label runat="server" ID="lbpool3" Text="0.00"></asp:Label> USDT</th>
                                 </tr>
 <tr>
                                    <th scope="col">4</th>
                                    <th  class="text-warning fw-bold" scope="col"><b>PACKAGE-4</b></th>
                                     <th class="text-warning fw-bold" scope="col"><asp:Label runat="server" ID="lbpool4" Text="0.00"></asp:Label> USDT</th>
                                 </tr>
 <tr>
                                    <th scope="col">5</th>
                                    <th  class="text-warning fw-bold" scope="col"><b>PACKAGE-5</b></th>
                                     <th class="text-warning fw-bold" scope="col"><asp:Label runat="server" ID="lbpool5" Text="0.00"></asp:Label> USDT</th>
                                 </tr>
 <tr>
                                    <th scope="col">6</th>
                                    <th  class="text-warning fw-bold" scope="col"><b>PACKAGE-6</b></th>
                                     <th class="text-warning fw-bold" scope="col"><asp:Label runat="server" ID="lbpool6" Text="0.00"></asp:Label> USDT</th>
                                 </tr>
 <tr>
                                    <th scope="col">7</th>
                                    <th  class="text-warning fw-bold" scope="col"><b>PACKAGE-7</b></th>
                                     <th class="text-warning fw-bold" scope="col"><asp:Label runat="server" ID="lbpool7" Text="0.00"></asp:Label> USDT</th>
                                 </tr>
 <tr>
                                    <th scope="col">8</th>
                                    <th  class="text-warning fw-bold" scope="col"><b>PACKAGE-8</b></th>
                                     <th class="text-warning fw-bold" scope="col"><asp:Label runat="server" ID="lbpool8" Text="0.00"></asp:Label> USDT</th>
                                 </tr>
 <tr>
                                    <th scope="col">9</th>
                                    <th  class="text-warning fw-bold" scope="col"><b>PACKAGE-9</b></th>
                                     <th class="text-warning fw-bold" scope="col"><asp:Label runat="server" ID="lbpool9" Text="0.00"></asp:Label> USDT</th>
                                 </tr>
 <tr>
                                    <th scope="col">10</th>
                                    <th  class="text-warning fw-bold" scope="col"><b>PACKAGE-10</b></th>
                                     <th class="text-warning fw-bold" scope="col"><asp:Label runat="server" ID="lbpool10" Text="0.00"></asp:Label> USDT</th>
                                 </tr>
 <tr>
                                    <th scope="col">11</th>
                                    <th  class="text-warning fw-bold" scope="col"><b>PACKAGE-11</b></th>
                                     <th class="text-warning fw-bold" scope="col"><asp:Label runat="server" ID="lbpool11" Text="0.00"></asp:Label> USDT</th>
                                 </tr>
                                <tr>
                                    <th scope="col">12</th>
                                    <th  class="text-warning fw-bold" scope="col"><b>PACKAGE-12</b></th>
                                     <th class="text-warning fw-bold" scope="col"><asp:Label runat="server" ID="lbpool12" Text="0.00"></asp:Label> USDT</th>
                                 </tr>

                            </thead>
                        
                        </table>
                            </div>
                        </div>
                  </div>
				
   


    </div>



    <div class="container blockBuy" style="margin-left: inherit;">
    </div>

    <script src="../Dash/Scripts/jquery-3.3.1.min.js"></script>
    <script src="../Dash/Scripts/jquery.validate.js"></script>
    <script src="../Dash/Scripts/jquery.validate.unobtrusive.js"></script>
    <!--<script src="../Dash/Scripts/jquery-3.3.1.js"></script>-->
    <script>
        function copyRefFunction(ele, id) {
            alert("hceka"+id)
            var $temp = $("<input>");
            $("body").append($temp);
            $temp.val('btnCopy0').select();
            document.execCommand("copy");
            $temp.remove();
            $("#" + id).attr('title', 'Copied');
            $("#cpoieddone").html('Copied  succesfully');
        }
    </script>
</asp:Content>

