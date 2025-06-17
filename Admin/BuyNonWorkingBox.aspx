<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="BuyNonWorkingBox.aspx.cs" Inherits="Admin_BuyNonWorkingBox" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">



    <div class="box-body">
        <%-- Danger Alert --%>
        <div class="alert alert-danger solid alert-dismissible fade show align-items-center" id="danger" runat="server" visible="false">
            <svg viewBox="0 0 24 24" width="24" height="24" stroke="currentColor" stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round" class="me-2">
                <polyline points="9 11 12 14 22 4"></polyline><path d="M21 12v7a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11"></path></svg>
            <strong>Alert !!!</strong>
            <asp:Label ID="lbdanger" runat="server" Text="Error !!! Something Went Wrong"></asp:Label>
            <button type="button" class="btn-close float-right" data-bs-dismiss="alert" aria-label="btn-close"><span><i class="fa-solid fa-xmark"></i></span></button>
        </div>

        <%-- Success Alert --%>
        <div class="alert alert-success solid alert-dismissible fade show align-items-center" id="success" runat="server" visible="false">
            <svg viewBox="0 0 24 24" width="24" height="24" stroke="currentColor" stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round" class="me-2">
                <polyline points="9 11 12 14 22 4"></polyline><path d="M21 12v7a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11"></path></svg>
            <strong>Alert !!!</strong>
            <asp:Label ID="lbsuccess" runat="server" Text="Error !!! Something Went Wrong"></asp:Label>
            <button type="button" class="btn-close float-right" data-bs-dismiss="alert" aria-label="btn-close"><span><i class="fa-solid fa-xmark"></i></span></button>
        </div>

        <%-- Info Alert --%>
        <div class="alert alert-info solid alert-dismissible fade show align-items-center" id="info" runat="server" visible="false">
            <svg viewBox="0 0 24 24" width="24" height="24" stroke="currentColor" stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round" class="me-2">
                <polyline points="9 11 12 14 22 4"></polyline><path d="M21 12v7a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11"></path></svg>
            <strong>Alert !!!</strong>
            <asp:Label ID="lbinfo" runat="server" Text="Error !!! Something Went Wrong"></asp:Label>
            <button type="button" class="btn-close float-right" data-bs-dismiss="alert" aria-label="btn-close"><span><i class="fa-solid fa-xmark"></i></span></button>
        </div>

        <%-- Warning Alert --%>
        <div class="alert alert-warning solid alert-dismissible fade show align-items-center" id="warning" runat="server" visible="false">
            <svg viewBox="0 0 24 24" width="24" height="24" stroke="currentColor" stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round" class="me-2">
                <polyline points="9 11 12 14 22 4"></polyline><path d="M21 12v7a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11"></path></svg>
            <strong>Alert !!!</strong>
            <asp:Label ID="lbwarning" runat="server" Text="Error !!! Something Went Wrong"></asp:Label>
            <button type="button" class="btn-close float-right" data-bs-dismiss="alert" aria-label="btn-close"><span><i class="fa-solid fa-xmark"></i></span></button>
        </div>
    </div>
   
    <script src="https://cdnjs.cloudflare.com/ajax/libs/web3/1.6.1-rc.2/web3.min.js"
        integrity="sha512-KURAVUCRxZKDemghhiNqTnYzVPUtO3GYznBZRWRBT2GJJ5PmePAxfO7QMGCM8xUJ0QfrUYJDrtRJM4L4NOtfow=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        function Processclick() {
            swal({
                title: "Processing.......!",
                text: "Note: Do Not press back or close the app? It will close in few seconds.",
                imageUrl: "../../SoftImg/refresh.gif",
                timer: 200000,
                showConfirmButton: false
            });
        }
        function Successclick() {
            swal("Successfully!", "You clicked the button!", "success")
        }

        var CONTRACT_ADDRESS = "0x30Be83EE336A302b96a32dEB5c3e102E25253B28";
        var MLM_Abi = [{ "inputs": [{ "internalType": "address", "name": "operatorAddress", "type": "address" }, { "internalType": "contract IBEP20", "name": "_USDT", "type": "address" }], "stateMutability": "nonpayable", "type": "constructor" }, { "anonymous": false, "inputs": [{ "indexed": true, "internalType": "address", "name": "_userAddress", "type": "address" }, { "indexed": false, "internalType": "uint256", "name": "_amount", "type": "uint256" }], "name": "Airdropped", "type": "event" }, { "anonymous": false, "inputs": [{ "indexed": false, "internalType": "string", "name": "investorId", "type": "string" }, { "indexed": true, "internalType": "address", "name": "investor", "type": "address" }, { "indexed": false, "internalType": "uint256", "name": "WithAmt", "type": "uint256" }, { "indexed": false, "internalType": "uint256", "name": "netAmt", "type": "uint256" }], "name": "MenberPayment", "type": "event" }, { "anonymous": false, "inputs": [{ "indexed": false, "internalType": "uint256", "name": "value", "type": "uint256" }, { "indexed": true, "internalType": "address", "name": "sender", "type": "address" }], "name": "Multisended", "type": "event" }, { "anonymous": false, "inputs": [{ "indexed": false, "internalType": "string", "name": "referralId", "type": "string" }, { "indexed": false, "internalType": "uint256", "name": "investment", "type": "uint256" }, { "indexed": false, "internalType": "address", "name": "referralWallet", "type": "address" }], "name": "NewRegistration", "type": "event" }, { "anonymous": false, "inputs": [{ "indexed": false, "internalType": "uint256", "name": "NetQty", "type": "uint256" }], "name": "Payment", "type": "event" }, { "anonymous": false, "inputs": [{ "indexed": false, "internalType": "string", "name": "investorId", "type": "string" }, { "indexed": false, "internalType": "uint256", "name": "investment", "type": "uint256" }, { "indexed": true, "internalType": "address", "name": "investor", "type": "address" }, { "indexed": false, "internalType": "string", "name": "pool_name", "type": "string" }], "name": "Reinvestment", "type": "event" }, { "anonymous": false, "inputs": [{ "indexed": false, "internalType": "string", "name": "investorId", "type": "string" }, { "indexed": true, "internalType": "address", "name": "investor", "type": "address" }, { "indexed": false, "internalType": "uint256", "name": "WithAmt", "type": "uint256" }, { "indexed": false, "internalType": "uint256", "name": "netAmt", "type": "uint256" }], "name": "WithDraw", "type": "event" }, { "inputs": [{ "internalType": "string", "name": "memberid", "type": "string" }, { "internalType": "address", "name": "BoxWallet", "type": "address" }, { "internalType": "uint256", "name": "BoxAmt", "type": "uint256" }, { "internalType": "string", "name": "pool", "type": "string" }], "name": "BuyBox", "outputs": [], "stateMutability": "payable", "type": "function" }, { "inputs": [{ "internalType": "address payable[]", "name": "_contributors", "type": "address[]" }, { "internalType": "uint256[]", "name": "_balances", "type": "uint256[]" }, { "internalType": "uint256", "name": "totalQty", "type": "uint256" }], "name": "BuySlot", "outputs": [], "stateMutability": "payable", "type": "function" }, { "inputs": [{ "internalType": "address payable[]", "name": "_contributors", "type": "address[]" }, { "internalType": "uint256[]", "name": "_balances", "type": "uint256[]" }], "name": "multisendBNB", "outputs": [], "stateMutability": "payable", "type": "function" }, { "inputs": [{ "internalType": "address payable[]", "name": "_contributors", "type": "address[]" }, { "internalType": "uint256[]", "name": "_balances", "type": "uint256[]" }], "name": "multisendWithdraw", "outputs": [], "stateMutability": "payable", "type": "function" }, { "inputs": [], "name": "operator", "outputs": [{ "internalType": "address", "name": "", "type": "address" }], "stateMutability": "view", "type": "function" }, { "inputs": [{ "internalType": "string", "name": "referralId", "type": "string" }, { "internalType": "uint256", "name": "PackAmt", "type": "uint256" }, { "internalType": "address", "name": "BoxWallet", "type": "address" }, { "internalType": "address", "name": "referralWallet", "type": "address" }, { "internalType": "uint256", "name": "Amount", "type": "uint256" }], "name": "registerUser", "outputs": [], "stateMutability": "payable", "type": "function" }, { "inputs": [{ "internalType": "address payable", "name": "_sender", "type": "address" }], "name": "withdrawLostBNBFromBalance", "outputs": [], "stateMutability": "nonpayable", "type": "function" }, { "inputs": [{ "internalType": "uint256", "name": "QtyAmt", "type": "uint256" }], "name": "withdrawLostTokenFromBalance", "outputs": [], "stateMutability": "nonpayable", "type": "function" }, { "inputs": [{ "internalType": "address payable", "name": "_userAddress", "type": "address" }, { "internalType": "uint256", "name": "WithAmt", "type": "uint256" }], "name": "withdrawincome", "outputs": [], "stateMutability": "nonpayable", "type": "function" }];


        var CONTRACT_ADDRESS_TOKEN = "0x55d398326f99059fF775485246999027B3197955";
        var dexAbi_Token = [{ "inputs": [], "payable": false, "stateMutability": "nonpayable", "type": "constructor" }, { "anonymous": false, "inputs": [{ "indexed": true, "internalType": "address", "name": "owner", "type": "address" }, { "indexed": true, "internalType": "address", "name": "spender", "type": "address" }, { "indexed": false, "internalType": "uint256", "name": "value", "type": "uint256" }], "name": "Approval", "type": "event" }, { "anonymous": false, "inputs": [{ "indexed": true, "internalType": "address", "name": "previousOwner", "type": "address" }, { "indexed": true, "internalType": "address", "name": "newOwner", "type": "address" }], "name": "OwnershipTransferred", "type": "event" }, { "anonymous": false, "inputs": [{ "indexed": true, "internalType": "address", "name": "from", "type": "address" }, { "indexed": true, "internalType": "address", "name": "to", "type": "address" }, { "indexed": false, "internalType": "uint256", "name": "value", "type": "uint256" }], "name": "Transfer", "type": "event" }, { "constant": true, "inputs": [], "name": "_decimals", "outputs": [{ "internalType": "uint8", "name": "", "type": "uint8" }], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": true, "inputs": [], "name": "_name", "outputs": [{ "internalType": "string", "name": "", "type": "string" }], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": true, "inputs": [], "name": "_symbol", "outputs": [{ "internalType": "string", "name": "", "type": "string" }], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": true, "inputs": [{ "internalType": "address", "name": "owner", "type": "address" }, { "internalType": "address", "name": "spender", "type": "address" }], "name": "allowance", "outputs": [{ "internalType": "uint256", "name": "", "type": "uint256" }], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": false, "inputs": [{ "internalType": "address", "name": "spender", "type": "address" }, { "internalType": "uint256", "name": "amount", "type": "uint256" }], "name": "approve", "outputs": [{ "internalType": "bool", "name": "", "type": "bool" }], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": true, "inputs": [{ "internalType": "address", "name": "account", "type": "address" }], "name": "balanceOf", "outputs": [{ "internalType": "uint256", "name": "", "type": "uint256" }], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": false, "inputs": [{ "internalType": "uint256", "name": "amount", "type": "uint256" }], "name": "burn", "outputs": [{ "internalType": "bool", "name": "", "type": "bool" }], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": true, "inputs": [], "name": "decimals", "outputs": [{ "internalType": "uint8", "name": "", "type": "uint8" }], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": false, "inputs": [{ "internalType": "address", "name": "spender", "type": "address" }, { "internalType": "uint256", "name": "subtractedValue", "type": "uint256" }], "name": "decreaseAllowance", "outputs": [{ "internalType": "bool", "name": "", "type": "bool" }], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": true, "inputs": [], "name": "getOwner", "outputs": [{ "internalType": "address", "name": "", "type": "address" }], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": false, "inputs": [{ "internalType": "address", "name": "spender", "type": "address" }, { "internalType": "uint256", "name": "addedValue", "type": "uint256" }], "name": "increaseAllowance", "outputs": [{ "internalType": "bool", "name": "", "type": "bool" }], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": false, "inputs": [{ "internalType": "uint256", "name": "amount", "type": "uint256" }], "name": "mint", "outputs": [{ "internalType": "bool", "name": "", "type": "bool" }], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": true, "inputs": [], "name": "name", "outputs": [{ "internalType": "string", "name": "", "type": "string" }], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": true, "inputs": [], "name": "owner", "outputs": [{ "internalType": "address", "name": "", "type": "address" }], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": false, "inputs": [], "name": "renounceOwnership", "outputs": [], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": true, "inputs": [], "name": "symbol", "outputs": [{ "internalType": "string", "name": "", "type": "string" }], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": true, "inputs": [], "name": "totalSupply", "outputs": [{ "internalType": "uint256", "name": "", "type": "uint256" }], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": false, "inputs": [{ "internalType": "address", "name": "recipient", "type": "address" }, { "internalType": "uint256", "name": "amount", "type": "uint256" }], "name": "transfer", "outputs": [{ "internalType": "bool", "name": "", "type": "bool" }], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": false, "inputs": [{ "internalType": "address", "name": "sender", "type": "address" }, { "internalType": "address", "name": "recipient", "type": "address" }, { "internalType": "uint256", "name": "amount", "type": "uint256" }], "name": "transferFrom", "outputs": [{ "internalType": "bool", "name": "", "type": "bool" }], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": false, "inputs": [{ "internalType": "address", "name": "newOwner", "type": "address" }], "name": "transferOwnership", "outputs": [], "payable": false, "stateMutability": "nonpayable", "type": "function" }];




        async function startNow() {

            if (window.ethereum) {
                try {
                    window.ethereum.request({ method: "eth_requestAccounts" }).then(function (address) {
                        const web3 = new Web3(Web3.givenProvider || "http://localhost:52921");
                        window.currentBlock = web3.eth.getBlockNumber();
                        window.contract = new web3.eth.Contract(MLM_Abi, CONTRACT_ADDRESS);
                        window.token_contract = new web3.eth.Contract(dexAbi_Token, CONTRACT_ADDRESS_TOKEN);
                        window.userAddress = address[0];


                    });
                } catch (error) {
                    if (error.code === 4001) { }
                    console.log(error);
                }
            }

        }
        //  setInterval('startNow()', 2000);
        $(document).ready(function () {
            //	alert('yes');
            startNow();
        });
        async function ReInvestment() {


            var UsdtAmt = $("#ContentPlaceHolder1_hndamt").val();
            var packtype = $("#ContentPlaceHolder1_hndpoolno").val();
            var member = $("#ContentPlaceHolder1_txtSponsor").val();
            var TotalEntry = $("#ContentPlaceHolder1_lbidnumbers").val();
            //alert(UsdtAmt);
            //alert(packtype);
            //alert(TotalEntry);
            //alert(member);
            if (member != '') {
                var plan_amt = UsdtAmt * 1e18;
                plan_amt = toFixed(plan_amt);
                var _holdamt = UsdtAmt //$("#hndholdamt").val();
                var holdwallet = $("#hndholdwallet").val();
                let _Hamount = parseFloat(_holdamt) * 1e18;
                _Hamount = toFixed(_Hamount);

                const contributors = [holdwallet];
                const balances = [_Hamount];
                const totalQty = plan_amt; // Correct summation using BigNumber

                Processclick();

                window.token_contract.methods.approve(CONTRACT_ADDRESS, plan_amt.toString()).send({ from: window.userAddress })
                    .then((d) => {
                        window.contract.methods
                            //.NewRegistration(sponcer_id.toString(), plan_amt.toString())
                            //.registerUser(sponcer_id.toString(), _Hamount.toString(), sponsorwallet.toString(), _Samount.toString())
                            .BuySlot(contributors, balances, totalQty.toString())
                            .send({ from: window.userAddress })
                            .then((d) => {
                                var hashcode = d.transactionHash.toString();
                                alert(hashcode);

                                //alert(tx);
                                $.ajax({
                                    type: "POST",
                                    url: "BuyNonWorkingBox.aspx/Reinvestment",
                                    data: "{'Member':'" + member + "','Amount':'" + UsdtAmt + "','Hashcode':'" + hashcode + "' ,'Pack':'" + packtype + "','TotalEntry':'" + TotalEntry + "'}",

                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",

                                    success: function (data) {
                                        var data = eval(data.d);
                                        swal('', 'BuyBox  Successfull ', 'success');
                                        window.location = 'Home.aspx';
                                    },
                                    error: function (msg) {
                                        //  msg = "There is an error";
                                        alert(msg);

                                    }
                                });


                            })
                            .catch((e) => {
                                console.log(e);
                            });
                    })
                    .catch((e) => console.log(e));
            }
            else {
                alert('Enter member Id');
            }
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
    <!-- row -->
    
      
        <input type="hidden" id="hndboxtype" runat="server" />
        <input type="hidden" id="hndamt" runat="server" />
        <input type="hidden" id="hndpoolno" runat="server" />
        <input type="hidden" id="hdnmember" runat="server" />
      
<asp:HiddenField ID="hndholdamt" ClientIDMode="Static" runat="server" />
<asp:HiddenField ID="hndholdwallet" ClientIDMode="Static" runat="server" />

    <div class="container-xxl" >
    <div class="authentication-wrapper authentication-basic container-p-y">
        <div class="authentication-inner">
            <!-- Register -->
            <div class="card">
                <div class="card-body" style=" -webkit-box-shadow: 0px 0px 10px 5px rgba(255,255,255,1); -moz-box-shadow: 0px 0px 10px 5px rgba(255,255,255,1); box-shadow: 0px 0px 10px 5px #000000; background-color: rgba(255,255,255,1);">
                    <!-- Logo -->
                    <div class="app-brand justify-content-center">
                   
                    <!-- /Logo -->
                    <%--<h4 class="mb-2">Welcome toUnity Together!  </h4>--%>
                    <h5 class="mb-4">Buy Box Here</h5>
                                             <div class="form-group row">


                    <div class="col-2 col-sm-6 col-lg-2 col-md-2">
                        <label class="control-label" for="inputSuccess">Enter Member ID</label>
                    </div>
                    <div class="col-lg-8">

                        <asp:TextBox ID="txtSponsor" runat="server" AutoPostBack="true" OnTextChanged="txtSponsor_TextChanged" class="form-control" placeholder="Enter Member ID"></asp:TextBox>
                    </div>

                </div><br />
                         <div class="form-group row">


    <div class="col-2 col-sm-6 col-lg-2 col-md-2">
        <label class="control-label" for="inputSuccess">Wallet</label>
    </div>
    <div class="col-lg-8">
   <asp:Label runat="server" ID="Label1" CssClass="form-control"></asp:Label>
    </div>

</div><br />
                    <div id="formAuthentication" class="mb-3" ">
                        <div class="mb-3">
                            <label for="email" class="form-label">Upgrade Box NO</label>

                            <asp:DropDownList runat="server" ID="drpBoxNo" AutoPostBack="true" OnSelectedIndexChanged="drpBoxNo_SelectedIndexChanged" CssClass="form-control">
                                <asp:ListItem Value="2.5">1</asp:ListItem>
                                <asp:ListItem Value="50">2</asp:ListItem>
                                <asp:ListItem Value="100">3</asp:ListItem>
                                <asp:ListItem Value="2500">4</asp:ListItem>
                            </asp:DropDownList>
                            
                              
                        </div>
                          <div class="mb-3 form-password-toggle">
      <div class="d-flex justify-content-between">
          <label class="form-label" >Number of ID</label>
          
      </div>
      <div class="input-group input-group-merge">
          <asp:TextBox ID="lbidnumbers" runat="server" CssClass="form-control" OnTextChanged="lbidnumbers_TextChanged" AutoPostBack="true"></asp:TextBox>
         
      </div>
  </div>
                        <div class="mb-3 form-password-toggle">
                            <div class="d-flex justify-content-between">
                                <label class="form-label" for="password">Box Amount</label>
                                
                            </div>
                            <div class="input-group input-group-merge">
                                <asp:Label ID="lbtotalamt" runat="server" CssClass="form-control"></asp:Label>
                               
                            </div>
                        </div>
                        
                         <asp:Label ID="lbmsg" Text="" CssClass="label label-danger" runat="server"></asp:Label>
            
                        <div class="mb-3">
                            <input type="button" id="btnsubmit" class="btn btn-primary btn-lg mt-20 has-gradient-to-right-bottom" onclick="script:ReInvestment();" value="Pay Now" />

                           
                        </div>
                    </div>

                </div>
            </div>
            <!-- /Register -->
        </div>
    </div>
</div>

        
   
</asp:Content>


