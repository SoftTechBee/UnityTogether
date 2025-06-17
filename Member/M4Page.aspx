<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MasterPage.master" AutoEventWireup="true" CodeFile="M4Page.aspx.cs" Inherits="User_Upgrade" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
              <div class="row">
<div  class="col-lg-12">
    <style>
        .container {
            max-width: 99%;
        }

        .logotype img {
            max-width: 250px;
        }

        .rotate {
            animation: rotation 2s infinite linear;
        }

        @keyframes rotation {
            from {
                transform: rotate(0deg);
            }

            to {
                transform: rotate(359deg);
            }
        }
    </style>
     <script type="text/javascript" src="https://code.jquery.com/jquery-1.7.1.min.js"></script>
    <script src="../myjs/M4.js"></script>
    <script src="../myjs/treant.js"></script>
    <script src="../myjs/vue.min.js"></script>
    <script src="../myjs/perfect-scrollbar.js"></script>
    <script src="../myjs/jquery.min.js"></script>
    <script src="../myjs/raphael.js"></script>
    <script src="../myjs/jquery.mousewheel.js"></script>



    <link rel="stylesheet" href="../css/treant.css" />
    <link rel="stylesheet" href="../css/perfect-scrollbar.css" />
    <link rel="stylesheet" href="../css/custom-tree.css" />
    <style>
        .iconbox--default {
            /*background-color: #F4F110 !important;*/

           /* background: white !important;
           border-radius: 50px !important;
            border-radius: 5px !important;*/
             height: 50px;
  width: 50px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
        }

        .iconbox--danger {
            background-color:red !important;
           
            border-radius: 5px !important;
            /*background-color: #ff6cc5 !important;*/
        }

        .iconbox--primary {
            background-color:  #45B1E8 !important;
            color: white;
        }

        .iconbox--warning {
            background-color:  #45B1E8 !important;
        }

        .iconbox--success {
                       background-color:  #ed008c !important;
                       height: 50px;
                       width: 50px;
                       border-radius: 50%;
                       display: inline-block;
        }

        .iconbox--brand {
            background-color:  #91c73e !important;
            height: 50px;
            width: 50px;
            border-radius: 50%;
           display: inline-block;
          
            color:white !important;
        }

        .tooltip-inner {
            max-width: 100% !important;
        }

        .iconbox {
            padding: 0.6rem;
          width: 60px !important;
        }

        .chart {
            transform: scale(0.7);
            width: 200%;
            margin-left: -50%;
            margin-top: -5%;
            margin-bottom: -5%;
        }

        .Treant .collapse-switch {
            width: 0;
        }

        .tooltip {
            top: -25px;
            left: -120%;
            width: 360%;
            background-color: black;
            color: white;
            padding: 5px;
            border-radius: 5px;
            opacity: 0;
            position: absolute;
            -webkit-transition: opacity 0.5s;
            -moz-transition: opacity 0.5s;
            -ms-transition: opacity 0.5s;
            -o-transition: opacity 0.5s;
            transition: opacity 0.5s;
        }

        .hover:hover .tooltip {
            opacity: 1;
        }
    </style>
    <script type="text/javascript">

        function myFunction() {

            var copyText = document.getElementById('ContentPlaceHolder1_myInput');

            copyText.select();
            copyText.setSelectionRange(0, 99999); /*For mobile devices*/
            /* Copy the text inside the text field */
            document.execCommand("copy");
            /* Alert the copied text */

            alert("Copied the text: " + copyText.value);

        }
        function myFunctionRight() {

            var copyText = document.getElementById('ContentPlaceHolder1_myInputlbreffsideright');

            copyText.select();
            copyText.setSelectionRange(0, 99999); /*For mobile devices*/
            /* Copy the text inside the text field */
            document.execCommand("copy");
            /* Alert the copied text */

            alert("Copied the text: " + copyText.value);

        }
    </script>

    <div class="row">
        <div class="col">
            <div class="border-gradient">
                <div class="border-gradient_content">
                    <div id="x42main" class="logotypeX4">
                        <h3 class="mb-3" style="text-align: center;">AUTO POOL PACKAGES</h3>
                    </div>

                    <div class="row">
                        <div class="col-md-6 col-lg-6 col-xl-6">
                            <div class="card bg-success" style="background-image: linear-gradient( 112.1deg,  rgba(32,38,57,1) 11.4%, rgba(63,76,119,1) 70.2% ); margin-bottom: 10px;">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-10">
                                            <h5 class="float-left text-white">25 USDT </h5>
                                        </div>
                                        <div class="col-2">
                                            <h5 class="float-right text-white">1</h5>
                                        </div>
                                    </div>
                                    <div id="nodetree1" class="chart"></div>
                                    <i class="fa fa-repeat text-white" aria-hidden="true"></i><%--<span id="x30" class="text-white"></span>--%>
                                     <a id="x131" class=" btn btn-block text-white btn-primary">View</a>
                                </div>
                            </div>
                        </div>
                       <div class="col-md-6 col-lg-6 col-xl-6">
                            <div class="card bg-success" style="background-image: linear-gradient( 112.1deg,  rgba(32,38,57,1) 11.4%, rgba(63,76,119,1) 70.2% ); margin-bottom: 10px;">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-10">
                                            <h5 class="float-left text-white">45 USDT </h5>
                                        </div>
                                        <div class="col-2">
                                            <h5 class="float-right text-white">2</h5>
                                        </div>
                                    </div>

                                    <!--begin: Node Tree -->
                                    <div id="nodetree2" class="chart"></div>
                                    <i class="fa fa-repeat text-white" aria-hidden="true"></i><%--<span id="x31" class="text-white"></span>--%>
                                 
                                    <a id="x132" class=" btn btn-block text-white btn-primary">View</a>

                                    <!--end: Node Tree -->
                                </div>
                            </div>
                        </div>
                       <div class="col-md-6 col-lg-6 col-xl-6">
                            <div class="card bg-success" style="background-image: linear-gradient( 112.1deg,  rgba(32,38,57,1) 11.4%, rgba(63,76,119,1) 70.2% ); margin-bottom: 10px;">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-10">
                                            <h5 class="float-left text-white">85 USDT </h5>
                                        </div>
                                        <div class="col-2">
                                            <h5 class="float-right text-white">3</h5>
                                        </div>
                                    </div>

                                    <!--begin: Node Tree -->
                                    <div id="nodetree3" class="chart"></div>
                                    <!--end: Node Tree -->
                                    <i class="fa fa-repeat text-white" aria-hidden="true"></i><%--<span id="x32" class="text-white"></span>--%>
                                       <a id="x133" class=" btn btn-block text-white btn-primary">View</a>
                                </div>
                            </div>
                        </div>
                       <div class="col-md-6 col-lg-6 col-xl-6">
                            <div class="card bg-success" style="background-image: linear-gradient( 112.1deg,  rgba(32,38,57,1) 11.4%, rgba(63,76,119,1) 70.2% ); margin-bottom: 10px;">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-10">
                                            <h5 class="float-left text-white">165 USDT </h5>
                                        </div>
                                        <div class="col-2">
                                            <h5 class="float-right text-white">4</h5>
                                        </div>
                                    </div>

                                    <!--begin: Node Tree -->
                                    <div id="nodetree4" class="chart"></div>
                                    <!--end: Node Tree -->
                                    <i class="fa fa-repeat text-white" aria-hidden="true"></i><%--<span id="x33" class="text-white"></span>--%>
                                       <a id="x134" class=" btn btn-block text-white btn-primary">View</a>
                                </div>
                            </div>
                        </div>
                       <div class="col-md-6 col-lg-6 col-xl-6">
                            <div class="card bg-success" style="background-image: linear-gradient( 112.1deg,  rgba(32,38,57,1) 11.4%, rgba(63,76,119,1) 70.2% ); margin-bottom: 10px;">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-10">
                                            <h5 class="float-left text-white">325 USDT </h5>
                                        </div>
                                        <div class="col-2">
                                            <h5 class="float-right text-white">5</h5>
                                        </div>
                                    </div>

                                    <!--begin: Node Tree -->
                                    <div id="nodetree5" class="chart"></div>
                                    <!--end: Node Tree -->
                                    <i class="fa fa-repeat text-white" aria-hidden="true"></i><%--<span id="x34" class="text-white"></span>--%>
                                       <a id="x135" class=" btn btn-block text-white btn-primary">View</a>
                                </div>
                            </div>
                        </div>
                       <div class="col-md-6 col-lg-6 col-xl-6">
                            <div class="card bg-success" style="background-image: linear-gradient( 112.1deg,  rgba(32,38,57,1) 11.4%, rgba(63,76,119,1) 70.2% ); margin-bottom: 10px;">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-10">
                                            <h5 class="float-left text-white">645 USDT </h5>
                                        </div>
                                        <div class="col-2">
                                            <h5 class="float-right text-white">6</h5>
                                        </div>
                                    </div>

                                    <!--begin: Node Tree -->
                                    <div id="nodetree6" class="chart"></div>
                                    <!--end: Node Tree -->
                                    <i class="fa fa-repeat text-white" aria-hidden="true"></i><%--<span id="x35" class="text-white"></span>--%>
                                       <a id="x136" class=" btn btn-block text-white btn-primary">View</a>
                                </div>
                            </div>
                        </div>
                       <div class="col-md-6 col-lg-6 col-xl-6">
                            <div class="card bg-success" style="background-image: linear-gradient( 112.1deg,  rgba(32,38,57,1) 11.4%, rgba(63,76,119,1) 70.2% ); margin-bottom: 10px;">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-10">
                                            <h5 class="float-left text-white">1285 USDT </h5>
                                        </div>
                                        <div class="col-2">
                                            <h5 class="float-right text-white">7</h5>
                                        </div>
                                    </div>

                                    <!--begin: Node Tree -->
                                    <div id="nodetree7" class="chart"></div>
                                    <!--end: Node Tree -->
                                    <i class="fa fa-repeat text-white" aria-hidden="true"></i><%--<span id="x36" class="text-white"></span>--%>
                                       <a id="x137" class=" btn btn-block text-white btn-primary">View</a>
                                </div>
                            </div>
                        </div>
                       <div class="col-md-6 col-lg-6 col-xl-6">
                            <div class="card bg-success" style="background-image: linear-gradient( 112.1deg,  rgba(32,38,57,1) 11.4%, rgba(63,76,119,1) 70.2% ); margin-bottom: 10px;">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-10">
                                            <h5 class="float-left text-white">2565 USDT </h5>
                                        </div>
                                        <div class="col-2">
                                            <h5 class="float-right text-white">8</h5>
                                        </div>
                                         
                                    </div>

                                    <!--begin: Node Tree -->
                                    <div id="nodetree8" class="chart"></div>
                                    <!--end: Node Tree -->
                                    <i class="fa fa-repeat text-white" aria-hidden="true"></i><%--<span id="x37" class="text-white"></span>--%>
                                      <a id="x138" class=" btn btn-block text-white btn-primary">View</a>

                                </div>
                            </div>
                        </div>
                       <div class="col-md-6 col-lg-6 col-xl-6">
                            <div class="card bg-success" style="background-image: linear-gradient( 112.1deg,  rgba(32,38,57,1) 11.4%, rgba(63,76,119,1) 70.2% ); margin-bottom: 10px;">
                                <div class="card-body">

                                    <div class="row">
                                        <div class="col-10">
                                            <h5 class="float-left text-white">5125 USDT </h5>
                                        </div>
                                        <div class="col-2">
                                            <h5 class="float-right text-white">9</h5>
                                        </div>
                                    </div>
                                    <!--begin: Node Tree -->
                                    <div id="nodetree9" class="chart"></div>
                                    <!--end: Node Tree -->
                                    <i class="fa fa-repeat text-white" aria-hidden="true"></i><%--<span id="x38" class="text-white"></span>--%>
                                       <a id="x139" class=" btn btn-block text-white btn-primary">View</a>
                                </div>
                            </div>
                        </div>
                       <div class="col-md-6 col-lg-6 col-xl-6">
                            <div class="card bg-success" style="background-image: linear-gradient( 112.1deg,  rgba(32,38,57,1) 11.4%, rgba(63,76,119,1) 70.2% ); margin-bottom: 10px;">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-10">
                                            <h5 class="float-left text-white">10245 USDT </h5>
                                        </div>
                                        <div class="col-2">
                                            <h5 class="float-right text-white">10</h5>
                                        </div>
                                    </div>

                                    <!--begin: Node Tree -->
                                    <div id="nodetree10" class="chart"></div>
                                    <!--end: Node Tree -->
                                    <i class="fa fa-repeat text-white" aria-hidden="true"></i><%--<span id="x39" class="text-white"></span>--%>
                                       <a id="x1310" class=" btn btn-block text-white btn-primary">View</a>
                                </div>
                            </div>
                        </div>
                       <div class="col-md-6 col-lg-6 col-xl-6">
                            <div class="card bg-success" style="background-image: linear-gradient( 112.1deg,  rgba(32,38,57,1) 11.4%, rgba(63,76,119,1) 70.2% ); margin-bottom: 10px;">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-10">
                                            <h5 class="float-left text-white">20485 USDT </h5>
                                        </div>
                                        <div class="col-2">
                                            <h5 class="float-right text-white">11</h5>
                                        </div>
                                    </div>

                                    <!--begin: Node Tree -->
                                    <div id="nodetree11" class="chart"></div>
                                    <!--end: Node Tree -->
                                    <i class="fa fa-repeat text-white" aria-hidden="true"></i><%--<span id="x310" class="text-white"></span>--%>
                                       <a id="x1311" class=" btn btn-block text-white btn-primary">View</a>
                                </div>
                            </div>
                        </div>
                       <div class="col-md-6 col-lg-6 col-xl-6">
                            <div class="card bg-success" style="background-image: linear-gradient( 112.1deg,  rgba(32,38,57,1) 11.4%, rgba(63,76,119,1) 70.2% ); margin-bottom: 10px;">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-10">
                                            <h5 class="float-left text-white">40965 USDT </h5>
                                        </div>
                                        <div class="col-2">
                                            <h5 class="float-right text-white">12</h5>
                                        </div>
                                    </div>

                                    <!--begin: Node Tree -->
                                    <div id="nodetree12" class="chart"></div>
                                    <!--end: Node Tree -->
                                    <i class="fa fa-repeat text-white" aria-hidden="true"></i><%--<span id="x311" class="text-white"></span>--%>
                                       <a id="x1312" class=" btn btn-block text-white btn-primary">View</a>
                                </div>
                            </div>
                        </div>
                      
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
                  </div>
</asp:Content>

