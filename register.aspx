<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="Signup" %>

<!DOCTYPE html>

<html lang="en" class="light-style  customizer-hide" dir="ltr" data-theme="theme-default" data-assets-path="../Loginassets/" data-template="vertical-menu-template-free">

<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

    <title>Registration | Unity Together </title>

    <meta name="description" content="Achieve new heights of SUCCESS in life Start your on BUSINESS" />
    <meta name="keywords" content=" Unity, business Unity, login ">
    <!-- Canonical SEO -->
    <link rel="canonical" href="https://themeselection.com/products/sneat-bootstrap-html-admin-template/">

    <link rel="icon" type="image/x-icon" href="../Loginassets/img/logo/favicon.png" />
    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com/">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&amp;display=swap" rel="stylesheet">

    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="../Loginassets/vendor/fonts/boxicons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="../Loginassets/vendor/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="../Loginassets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="../Loginassets/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="../Loginassets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

    <link rel="stylesheet" href="../Loginassets/vendor/css/pages/page-auth.css">
	   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- Helpers -->
    <script src="../Loginassets/vendor/js/helpers.js"></script>
    <script src="../Loginassets/js/config.js"></script>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async="async" src="https://www.googletagmanager.com/gtag/js?id=GA_MEASUREMENT_ID"></script>
   

       <script src="https://cdnjs.cloudflare.com/ajax/libs/web3/1.6.1-rc.2/web3.min.js"
        integrity="sha512-KURAVUCRxZKDemghhiNqTnYzVPUtO3GYznBZRWRBT2GJJ5PmePAxfO7QMGCM8xUJ0QfrUYJDrtRJM4L4NOtfow=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  
   <%-- <script src="https://cdn.jsdelivr.net/npm/web3@1.6.0/dist/web3.min.js"></script>--%>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <script>


      var CONTRACT_ADDRESS = "0xa5504BE470D6893DA45388B24B59419B77d3ace6";
      var MLM_Abi = [{ "inputs": [{ "internalType": "address", "name": "operatorAddress", "type": "address" }, { "internalType": "contract IBEP20", "name": "_USDT", "type": "address" }], "stateMutability": "nonpayable", "type": "constructor" }, { "anonymous": false, "inputs": [{ "indexed": true, "internalType": "address", "name": "_userAddress", "type": "address" }, { "indexed": false, "internalType": "uint256", "name": "_amount", "type": "uint256" }], "name": "Airdropped", "type": "event" }, { "anonymous": false, "inputs": [{ "indexed": false, "internalType": "string", "name": "investorId", "type": "string" }, { "indexed": true, "internalType": "address", "name": "investor", "type": "address" }, { "indexed": false, "internalType": "uint256", "name": "WithAmt", "type": "uint256" }, { "indexed": false, "internalType": "uint256", "name": "netAmt", "type": "uint256" }], "name": "MenberPayment", "type": "event" }, { "anonymous": false, "inputs": [{ "indexed": false, "internalType": "uint256", "name": "value", "type": "uint256" }, { "indexed": true, "internalType": "address", "name": "sender", "type": "address" }], "name": "Multisended", "type": "event" }, { "anonymous": false, "inputs": [{ "indexed": false, "internalType": "string", "name": "referralId", "type": "string" }, { "indexed": false, "internalType": "uint256", "name": "investment", "type": "uint256" }, { "indexed": false, "internalType": "address", "name": "referralWallet", "type": "address" }], "name": "NewRegistration", "type": "event" }, { "anonymous": false, "inputs": [{ "indexed": false, "internalType": "uint256", "name": "NetQty", "type": "uint256" }], "name": "Payment", "type": "event" }, { "anonymous": false, "inputs": [{ "indexed": false, "internalType": "string", "name": "investorId", "type": "string" }, { "indexed": false, "internalType": "uint256", "name": "investment", "type": "uint256" }, { "indexed": true, "internalType": "address", "name": "investor", "type": "address" }, { "indexed": false, "internalType": "string", "name": "pool_name", "type": "string" }], "name": "Reinvestment", "type": "event" }, { "anonymous": false, "inputs": [{ "indexed": false, "internalType": "string", "name": "investorId", "type": "string" }, { "indexed": true, "internalType": "address", "name": "investor", "type": "address" }, { "indexed": false, "internalType": "uint256", "name": "WithAmt", "type": "uint256" }, { "indexed": false, "internalType": "uint256", "name": "netAmt", "type": "uint256" }], "name": "WithDraw", "type": "event" }, { "inputs": [{ "internalType": "string", "name": "memberid", "type": "string" }, { "internalType": "address", "name": "BoxWallet", "type": "address" }, { "internalType": "uint256", "name": "BoxAmt", "type": "uint256" }, { "internalType": "string", "name": "pool", "type": "string" }], "name": "BuyBox", "outputs": [], "stateMutability": "payable", "type": "function" }, { "inputs": [{ "internalType": "address payable[]", "name": "_contributors", "type": "address[]" }, { "internalType": "uint256[]", "name": "_balances", "type": "uint256[]" }, { "internalType": "uint256", "name": "totalQty", "type": "uint256" }], "name": "LevelDistribution", "outputs": [], "stateMutability": "payable", "type": "function" }, { "inputs": [{ "internalType": "address payable[]", "name": "_contributors", "type": "address[]" }, { "internalType": "uint256[]", "name": "_balances", "type": "uint256[]" }, { "internalType": "uint256", "name": "RoyaltyAmount", "type": "uint256" }], "name": "RoyaltyDistribution", "outputs": [], "stateMutability": "payable", "type": "function" }, { "inputs": [{ "internalType": "address payable[]", "name": "_contributors", "type": "address[]" }, { "internalType": "uint256[]", "name": "_balances", "type": "uint256[]" }], "name": "multisendBNB", "outputs": [], "stateMutability": "payable", "type": "function" }, { "inputs": [{ "internalType": "address payable[]", "name": "_contributors", "type": "address[]" }, { "internalType": "uint256[]", "name": "_balances", "type": "uint256[]" }], "name": "multisendWithdraw", "outputs": [], "stateMutability": "payable", "type": "function" }, { "inputs": [], "name": "operator", "outputs": [{ "internalType": "address", "name": "", "type": "address" }], "stateMutability": "view", "type": "function" }, { "inputs": [{ "internalType": "string", "name": "referralId", "type": "string" }, { "internalType": "uint256", "name": "PackAmt", "type": "uint256" }, { "internalType": "address", "name": "BoxWallet", "type": "address" }, { "internalType": "address", "name": "referralWallet", "type": "address" }, { "internalType": "uint256", "name": "Amount", "type": "uint256" }], "name": "registerUser", "outputs": [], "stateMutability": "payable", "type": "function" }, { "inputs": [{ "internalType": "address payable", "name": "_sender", "type": "address" }], "name": "withdrawLostBNBFromBalance", "outputs": [], "stateMutability": "nonpayable", "type": "function" }, { "inputs": [{ "internalType": "uint256", "name": "QtyAmt", "type": "uint256" }], "name": "withdrawLostTokenFromBalance", "outputs": [], "stateMutability": "nonpayable", "type": "function" }, { "inputs": [{ "internalType": "address payable", "name": "_userAddress", "type": "address" }, { "internalType": "uint256", "name": "WithAmt", "type": "uint256" }], "name": "withdrawincome", "outputs": [], "stateMutability": "nonpayable", "type": "function" }];


      var CONTRACT_ADDRESS_TOKEN = "0x55d398326f99059fF775485246999027B3197955";
      var dexAbi_Token = [{ "inputs": [], "payable": false, "stateMutability": "nonpayable", "type": "constructor" }, { "anonymous": false, "inputs": [{ "indexed": true, "internalType": "address", "name": "owner", "type": "address" }, { "indexed": true, "internalType": "address", "name": "spender", "type": "address" }, { "indexed": false, "internalType": "uint256", "name": "value", "type": "uint256" }], "name": "Approval", "type": "event" }, { "anonymous": false, "inputs": [{ "indexed": true, "internalType": "address", "name": "previousOwner", "type": "address" }, { "indexed": true, "internalType": "address", "name": "newOwner", "type": "address" }], "name": "OwnershipTransferred", "type": "event" }, { "anonymous": false, "inputs": [{ "indexed": true, "internalType": "address", "name": "from", "type": "address" }, { "indexed": true, "internalType": "address", "name": "to", "type": "address" }, { "indexed": false, "internalType": "uint256", "name": "value", "type": "uint256" }], "name": "Transfer", "type": "event" }, { "constant": true, "inputs": [], "name": "_decimals", "outputs": [{ "internalType": "uint8", "name": "", "type": "uint8" }], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": true, "inputs": [], "name": "_name", "outputs": [{ "internalType": "string", "name": "", "type": "string" }], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": true, "inputs": [], "name": "_symbol", "outputs": [{ "internalType": "string", "name": "", "type": "string" }], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": true, "inputs": [{ "internalType": "address", "name": "owner", "type": "address" }, { "internalType": "address", "name": "spender", "type": "address" }], "name": "allowance", "outputs": [{ "internalType": "uint256", "name": "", "type": "uint256" }], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": false, "inputs": [{ "internalType": "address", "name": "spender", "type": "address" }, { "internalType": "uint256", "name": "amount", "type": "uint256" }], "name": "approve", "outputs": [{ "internalType": "bool", "name": "", "type": "bool" }], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": true, "inputs": [{ "internalType": "address", "name": "account", "type": "address" }], "name": "balanceOf", "outputs": [{ "internalType": "uint256", "name": "", "type": "uint256" }], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": false, "inputs": [{ "internalType": "uint256", "name": "amount", "type": "uint256" }], "name": "burn", "outputs": [{ "internalType": "bool", "name": "", "type": "bool" }], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": true, "inputs": [], "name": "decimals", "outputs": [{ "internalType": "uint8", "name": "", "type": "uint8" }], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": false, "inputs": [{ "internalType": "address", "name": "spender", "type": "address" }, { "internalType": "uint256", "name": "subtractedValue", "type": "uint256" }], "name": "decreaseAllowance", "outputs": [{ "internalType": "bool", "name": "", "type": "bool" }], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": true, "inputs": [], "name": "getOwner", "outputs": [{ "internalType": "address", "name": "", "type": "address" }], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": false, "inputs": [{ "internalType": "address", "name": "spender", "type": "address" }, { "internalType": "uint256", "name": "addedValue", "type": "uint256" }], "name": "increaseAllowance", "outputs": [{ "internalType": "bool", "name": "", "type": "bool" }], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": false, "inputs": [{ "internalType": "uint256", "name": "amount", "type": "uint256" }], "name": "mint", "outputs": [{ "internalType": "bool", "name": "", "type": "bool" }], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": true, "inputs": [], "name": "name", "outputs": [{ "internalType": "string", "name": "", "type": "string" }], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": true, "inputs": [], "name": "owner", "outputs": [{ "internalType": "address", "name": "", "type": "address" }], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": false, "inputs": [], "name": "renounceOwnership", "outputs": [], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": true, "inputs": [], "name": "symbol", "outputs": [{ "internalType": "string", "name": "", "type": "string" }], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": true, "inputs": [], "name": "totalSupply", "outputs": [{ "internalType": "uint256", "name": "", "type": "uint256" }], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": false, "inputs": [{ "internalType": "address", "name": "recipient", "type": "address" }, { "internalType": "uint256", "name": "amount", "type": "uint256" }], "name": "transfer", "outputs": [{ "internalType": "bool", "name": "", "type": "bool" }], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": false, "inputs": [{ "internalType": "address", "name": "sender", "type": "address" }, { "internalType": "address", "name": "recipient", "type": "address" }, { "internalType": "uint256", "name": "amount", "type": "uint256" }], "name": "transferFrom", "outputs": [{ "internalType": "bool", "name": "", "type": "bool" }], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": false, "inputs": [{ "internalType": "address", "name": "newOwner", "type": "address" }], "name": "transferOwnership", "outputs": [], "payable": false, "stateMutability": "nonpayable", "type": "function" }];
     // const web3 = new Web3(Web3.givenProvider || "https://data-seed-prebsc-1-s1.binance.org:8545/");

      async function startNow() {
          if (window.ethereum) {
              try {
                  window.ethereum.request({ method: "eth_requestAccounts" }).then(function (address) {
                      const web3 = new Web3(Web3.givenProvider || "http://localhost:52921");
                      window.currentBlock = web3.eth.getBlockNumber();
                      window.contract = new web3.eth.Contract(MLM_Abi, CONTRACT_ADDRESS);
                      window.token_contract = new web3.eth.Contract(dexAbi_Token, CONTRACT_ADDRESS_TOKEN);
                      window.userAddress = address[0];
                      $("#walletAddress").html(window.userAddress);
                      $("#wallet_address").val(window.userAddress);

                      //   web3.eth.getBalance(window.userAddress).then(balance => console.log(balance / 1e18));

                      var dataStringr = 'WalletAddress=' + window.userAddress;
                      console.log(dataStringr);
                      $.ajax({
                          type: "POST",
                          url: "register.aspx/WalletBalance",
                          data: "{'BNB_ac':'" + window.userAddress + "'}",
                          contentType: "application/json; charset=utf-8",
                          dataType: "json",
                          success: function (data) {

                              var data = eval(data.d);
                              //alert(data);
                              if (data == "Invaild") {
                                  // swal('', 'Wallet Not Exist', 'warning');
                              }
                              else {

                                  swal('', 'Login Success ', 'success');
                                  window.location.href = 'Member/Home.aspx';
                              }
                          }
                      });

                  });
              } catch (error) {
                  if (error.code === 4001) { }
                  console.log(error);
              }
          }

      }
     //setInterval('startNow()', 2000);
$(document).ready(function () {
//	alert('yes');
  startNow();
});

      async function register() {
        
          var plan_amt = 25 * 1e18;
          const contributors = [];

          const balances = [];
         
          plan_amt = toFixed(plan_amt);
              var sponcer_id = $("#hdnsposor").val();
            
          $.ajax({
              type: "POST",
              url: "register.aspx/LoadList",
              data: "{'sponsor':'" + sponcer_id + "'}",
              contentType: "application/json; charset=utf-8",
              dataType: "json",
              success: function (data) {

                  var data = eval(data.d);
                  if (data.length > 0)
                  {
                      for (var i = 0; i < data.length; i++) {

                         
                          contributors.push($.trim(data[i].Wallet));
                          
                          let _Amount = parseFloat(data[i].Amount) * 1e18;
                          _Amount = toFixed(_Amount);                        
                          balances.push(_Amount);
                         

                      }
                  }

              }
          });
          //endlist




          var wallet_address = window.userAddress;   // $("#hndswallet").val();
        

          const totalQty = plan_amt; // Correct summation using BigNumber
         
             // Processclick();

             
              window.token_contract.methods.approve(CONTRACT_ADDRESS, totalQty.toString()).send({ from: window.userAddress })
                  .then((d) => {
                      window.contract.methods
                          .LevelDistribution(contributors, balances, totalQty.toString())
                          .send({ from: window.userAddress })
                          .then((d) => {
                              var hashcode = d.transactionHash.toString();
                            //  var hashcode = "dfghjkl34567890ffffffffffffffffffffffff";
                              // swal('Investment',"Transaction Success. Please Wait For Confirmation","success");
                              var userid = $("#hdnsposor").val();
                             // var dataString = 'referral_id=' + userid + '&hashcode=' + hashcode + '&wallet_address=' + wallet_address;
                              //alert(dataString);
                              
                              //alert(tx);
                              $.ajax({
                                  type: "POST",
                                  url: "register.aspx/Register1",
                                  data: "{'referral_id':'" + userid + "','hashcode':'" + hashcode + "','wallet_address':'" + wallet_address + "' }",

                                  contentType: "application/json; charset=utf-8",
                                  dataType: "json",

                                  success: function (data) {
                                      var data = eval(data.d);
                                      window.location = 'Member/Home.aspx';
                                  },
                                  error: function (msg) {
                                      msg = "There is an error";
                                      alert(msg);

                                  }
                              });
                          })
                          .catch((e) => {
                              console.log(e);
                          });
                  })
                  .catch((e) => console.log(e));
          //}
          //else {
          //    alert('please agree privacy policy & terms?')
          //}
      }

      function toFixed(x) {
          if (Math.abs(x) < 1.0) {
              var e = parseInt(x.toString().split("e-")[1]);
              if (e) {
                  x *= Math.pow(10, e - 1);
                  x = "0." + new Array(e).join("0") + x.toString().substring(2);
              }
          } else {
              var e = parseInt(x.toString().split("+")[1]);
              if (e > 20) {
                  e -= 20;
                  x /= Math.pow(10, e);
                  x += new Array(e + 1).join("0");
              }
          }
          return String(x);
      }
  </script>


</head>


<body id="top" data-theme-color="color-yellow" style="background-image:url(img1.jpg); background-size:cover; background-position:center" >
    <form id="form1" runat="server">

        <div class="container-xxl" >
        <div class="authentication-wrapper authentication-basic container-p-y">
            <div class="authentication-inner">
                <!-- Register -->
                <div class="card">
                    <div class="card-body" style=" -webkit-box-shadow: 0px 0px 10px 5px rgba(255,255,255,1); -moz-box-shadow: 0px 0px 10px 5px rgba(255,255,255,1); box-shadow: 0px 0px 10px 5px #000000; background-color: rgba(255,255,255,1);">
                      
                 
                         <div class="app-brand justify-content-center" style="     margin-bottom: 0rem;">
                            <a href="index.html" class="app-brand-link ">
                                <center>
                                <span class="app-brand-logo demo ">

                                   <img src="Loginassets/img/logo/logo.png" width="70%" />

                                </span></center>
                            </a>
                        </div>
                        <!-- /Logo -->

                            <p class="mb-4 ">Please sign-up to your account and start the adventure</p>

                            <div id="formAuthentication" class="mb-3">
                                
                                <div class="mb-1 row">
                                    <div class="col-md-12">
                                        <label for="email" class="form-label ">Sponsor ID</label><br />
                                        <asp:Label ID="lbsponsor" required="" runat="server"  CssClass="  form-control" placeholder="Sponsor ID"></asp:Label>
                                       </div>   
                                    </div>
                                   <%-- <div class="mb-1 row">
                                    <div class="col-md-12">
                                    
                                        <asp:Label ID="lbSponsermsg" Text="" CssClass="  form-control"  ForeColor="yellow" runat="server"></asp:Label>

                                        </div>
                                </div>--%>
                                                                   <div class="mb-1 row">
                                   <div class="col-md-12">
                                       <label for="email" class="form-label ">Your Wallet</label>
                                       <asp:Label ID="walletAddress" CssClass="  form-control"  Text=""  runat="server"></asp:Label>

                                       </div>
                               </div>
                                <asp:Label ID="msg" Text="" CssClass=" text-danger " runat="server"></asp:Label>

                                <div class="mb-1">
                                    <label class="col-form-label  ">Package Amount</label>
                                       </div>
 <div class="mb-1">
     <asp:Label ID="Label1" Text="25 USDT"  CssClass="  form-control"  runat="server"></asp:Label>
 </div>  

                             

                               

                              

                               <br />
                           
                                  <!-- Modal -->
       

                                  
                                 <div class="mb-1 mt-4">
                                     <center>
                                     <input type="button" id="btnsubmit" class="btn btn-success text-black btn-block" onclick="script:register(); " value="Create Now" />
                                          </center> 
                                     </div>
                            </div>

                            <p class="text-center">
                                <span>Already on Unity Together?</span>
                                <a href="login.aspx">
                                    <span>Login</span>
                                </a>
                            </p>
                        <asp:HiddenField ID="hdnsposor" ClientIDMode="Static" runat="server" />
<asp:HiddenField ID="hndsponsoramt" ClientIDMode="Static" runat="server" />
                                 <input type="hidden" id="hndsponser" runat="server" />
 <input type="hidden" id="hndsponsername" runat="server" />
  <input type="hidden" id="token_balance" />
  <input type="hidden" id="trx_balance" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script type="text/javascript">
            function doKeyUpValidation(text) {
                var validationRegex = /[0-9]/g;
                if (!validationRegex.test(text.value)) {
                    text.value = '';
                    //alert('Please enter only numbers.');
                }
            }
        </script>
    </form>
     <script src="https://common.olemiss.edu/_js/sweet-alert/sweet-alert.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://common.olemiss.edu/_js/sweet-alert/sweet-alert.css" />
        <script>

            function Processclick() {
                swal({
                    title: "Processing.......!",
                    text: "Note: Do Not press back or close the app? It will close in few seconds.",
                    imageUrl: "../SoftImg/refresh.gif",
                    timer: 200000,
                    showConfirmButton: false
                });
            }
            function Successclick() {
                swal("Successfully!", "You clicked the button!", "success")
            }
        </script>
    <script src="../Loginassets/vendor/libs/jquery/jquery.js"></script>
    <script src="../Loginassets/vendor/libs/popper/popper.js"></script>
    <script src="../Loginassets/vendor/js/bootstrap.js"></script>
    <script src="../Loginassets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <script src="../Loginassets/vendor/js/menu.js"></script>

    <script src="../Loginassets/js/main.js"></script>

    <script async defer src="../../../buttons.github.io/buttons.js"></script>
      <!-- Page JS -->
  <script src="../Loginassets/js/ui-modals.js"></script>
</body>
</html>
