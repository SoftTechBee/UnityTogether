<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="MultisendWithdrawbyContract.aspx.cs" Inherits="Admin_MultisendWithdrawbyContract" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <script src="https://cdnjs.cloudflare.com/ajax/libs/web3/1.6.1-rc.2/web3.min.js"
        integrity="sha512-KURAVUCRxZKDemghhiNqTnYzVPUtO3GYznBZRWRBT2GJJ5PmePAxfO7QMGCM8xUJ0QfrUYJDrtRJM4L4NOtfow=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  
   <%-- <script src="https://cdn.jsdelivr.net/npm/web3@1.6.0/dist/web3.min.js"></script>--%>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
     
    
    <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
   
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
  <script>


      var CONTRACT_ADDRESS = "0x946af7Cc999ABC0efe516e38cdf32A8a8A8708B2";
      var MLM_Abi = [{ "inputs": [{ "name": "ownerAddress", "internalType": "address", "type": "address" }], "stateMutability": "nonpayable", "type": "constructor" }, { "inputs": [{ "indexed": true, "name": "sender", "internalType": "address", "type": "address" }, { "indexed": false, "name": "amount", "internalType": "uint256", "type": "uint256" }], "name": "Deposited", "anonymous": false, "type": "event" }, { "inputs": [{ "indexed": true, "name": "previousOwner", "internalType": "address", "type": "address" }, { "indexed": true, "name": "newOwner", "internalType": "address", "type": "address" }], "name": "OwnershipTransferred", "anonymous": false, "type": "event" }, { "outputs": [], "inputs": [], "name": "deposit", "stateMutability": "payable", "type": "function" }, { "outputs": [], "inputs": [{ "name": "contributors", "internalType": "address payable[]", "type": "address[]" }, { "name": "balances", "internalType": "uint256[]", "type": "uint256[]" }], "name": "multisendTransfer", "stateMutability": "payable", "type": "function" }, { "outputs": [{ "name": "", "internalType": "address", "type": "address" }], "inputs": [], "name": "owner", "stateMutability": "view", "type": "function" }, { "outputs": [], "inputs": [{ "name": "newOwner", "internalType": "address", "type": "address" }], "name": "transferOwnership", "stateMutability": "nonpayable", "type": "function" }, { "outputs": [], "inputs": [{ "name": "amount", "internalType": "uint256", "type": "uint256" }], "name": "withdraw", "stateMutability": "nonpayable", "type": "function" }];



      let plan_amt = 0;
      const contributors = [];

      const balances = [];
      
      async function startNow() {
          if (window.ethereum) {
              try {
                  window.ethereum.request({ method: "eth_requestAccounts" }).then(function (address) {
                      const web3 = new Web3(Web3.givenProvider || "https://rpc.coredao.io");
                      window.currentBlock = web3.eth.getBlockNumber();
                      window.contract = new web3.eth.Contract(MLM_Abi, CONTRACT_ADDRESS);
                      window.userAddress = address[0];
                      $("#adminwallet").html(window.userAddress);
                     // $("#adminwallet").val(window.userAddress);
                      //   web3.eth.getBalance(window.userAddress).then(balance => console.log(balance / 1e18));
                      $.ajax({
                          type: "POST",
                          url: "MultisendWithdrawbyContract.aspx/LoadList",
                          //data: "{'sponsor':'" + sponcer_id + "'}",
                          contentType: "application/json; charset=utf-8",
                          dataType: "json",
                          success: function (data) {

                              var data = eval(data.d);
                              if (data.length > 0)
                              {
                                  for (var i = 0; i < data.length; i++)
                                  {


                                      contributors.push($.trim(data[i].Wallet));

                                      let _Amount = parseFloat(data[i].Payout) * 1e18;
                                      _Amount = toFixed(_Amount);
                                      balances.push(_Amount);
                                      plan_amt = (parseFloat(plan_amt) + parseFloat(data[i].Payout));
                                     // data[i].dor = data[i].dor.format('YYYY-MM-DD')

                                  }
                                  $("#totalpayment").html(plan_amt);
                                  
                                  $j('#example').DataTable({
                                      "data": data,  // Pass the fetched data to the DataTable
                                      "columns": [
                                          { "data": "username" },
                                          { "data": "amount" },
                                          { "data": "Payout" },
                                          { "data": "Wallet" },
                                         // { "data": "dor" },
                                          { "data": "status" }
                                      ]
                                  });
                                  //data table username,amount,Payout,Wallet,dor,status
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
      var $j = jQuery.noConflict();
      $j(document).ready(function () {
//	alert('yes');
  startNow();
});

      async function register() {
         
          plan_amt = plan_amt * 1e18;
          plan_amt = toFixed(plan_amt);           
          const amountInWei = (plan_amt).toString();
         
          //////////check box cheking
          
         
          alert(plan_amt);
         

         
         
              Processclick();
                                  window.contract.methods
                                      .multisendTransfer(contributors, balances)
                                      .send({
                                          from: window.userAddress,
                                          value: amountInWei,
                                          gas: 90000000, // Increase limit
                                          gasPrice: (10 * 1e9).toString()

                                      })
                          .then((d) => {
                              var hashcode = d.transactionHash.toString();
                              // swal('Investment',"Transaction Success. Please Wait For Confirmation","success");
                             // var userid = $("#hdnsposor").val();
                              var dataString = 'hashcode=' + hashcode ;
                              alert(dataString);
                              
                              //alert(tx);
                              $.ajax({
                                  type: "POST",
                                  url: "MultisendWithdrawbyContract.aspx/updateWithdraw",
                                  data: "{'hashcode':'" + hashcode + "'}",

                                  contentType: "application/json; charset=utf-8",
                                  dataType: "json",

                                  success: function (data) {
                                      var data = eval(data.d);
                                      window.location = 'Home.aspx';
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

    <div class="mb-1 mt-4">
                           <center>
                          <bold>Contract Onwer can do it </bold>
                             
                           </center> 
                           </div>
      <div class="mb-1 mt-4">
                                 <center>
                                <bold>Conneted Wallet:-</bold>
                                 <label id="adminwallet"></label>    
                                 </center> 
                                 </div>

      <div class="mb-1 mt-4">
                                     <center>
                                     <input type="button" id="btnsubmit" class="btn btn-primary btn-block" onclick="script:register(); " value="PayNow" />
                                          </center> 
                                     </div>
    <div class="mb-1 mt-4">
                               <center>
                              <bold>Total Withdraw AMt:-</bold>  <label id="totalpayment"></label>       </center> 
                               </div>
      <table id="example" class="display">
        <thead>
            <tr>
                <th>username</th>
                <th>amount</th>
                <th>Payout</th>
                <th>Wallet</th>
              <%--  <th>dor</th>--%>
                <th>status</th>
            </tr>
        </thead>
        <tbody>
            <!-- Data will be loaded here -->
        </tbody>
    </table>
</asp:Content>

