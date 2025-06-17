<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MasterPage.master" AutoEventWireup="true" CodeFile="M6Page.aspx.cs" Inherits="User_Upgrade" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

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
    <script src="../myjs/temp.js"></script>
    <script src="../myjs/treant.js"></script>
    <script src="../myjs/vue.min.js"></script>
    <script src="../myjs/perfect-scrollbar.js"></script>
    <script src="../myjs/jquery.min.js"></script>

    <script src="../myjs/raphael.js"></script>

    <script src="../myjs/jquery.mousewheel.js"></script>

    <script>


        //new Treant(chart_config17);
        //new Treant(chart_config18);
        //new Treant(chart_config19);
        //new Treant(chart_config20);
        //new Treant(chart_config21);
        //new Treant(chart_config22);
        //new Treant(chart_config23);
        //new Treant(chart_config24);
        //new Treant(chart_config25);
        //new Treant(chart_config26);
        //new Treant(chart_config27);
        //new Treant(chart_config28);
        //new Treant(chart_config29);
        //new Treant(chart_config30);
        //new Treant(chart_config31);
        //new Treant(chart_config32);
    </script>

    <link rel="stylesheet" href="../css/treant.css" />
    <link rel="stylesheet" href="../css/perfect-scrollbar.css" />
    <link rel="stylesheet" href="../css/custom-tree.css" />
    <style>
        .iconbox--default {
            /*background-color: #F4F110 !important;*/

            background: #cac531;
            background: linear-gradient(to left, #cac531, #f3f9a7);
            border-radius: 5px !important;
        }

        .iconbox--danger {
            background-color: #FBAB7E;
            background-image: linear-gradient(62deg, #FBAB7E 0%, #F7CE68 100%);
            border-radius: 5px !important;
            /*background-color: #ff6cc5 !important;*/
        }

        .iconbox--primary {
            background-color: #5CF410 !important;
            color: white;
        }

        .iconbox--warning {
            background-color: #5CF410 !important;
        }

        .iconbox--success {
            background-color: #5CF410 !important;
        }

        .iconbox--brand {
            background-color: #74EBD5;
            background-image: linear-gradient(135deg, #74EBD5 0%, #9FACE6 100%);
            border-radius: 5px !important;
            /* background-color: #4158D0;
            background-image: linear-gradient(135deg, #4158D0 0%, #C850C0 46%, #FFCC70 100%);*/
            /*background-color: #0093E9; 
            background-image: linear-gradient(315deg, #0093E9 0%, #80D0C7 100%) !important;*/
            color: black;
        }

        .tooltip-inner {
            max-width: 100% !important;
        }

        .iconbox {
            padding: 0.6rem;
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
                    <div id="x4main" class="logotypeX4">
                        <h2 class="mb-3" style="color: #F8B940 !important; text-align: center;">King Tiger M6</h2>
                    </div>

                    <div class="row">
                        <div class="col-md-12 col-lg-12 col-xl-12">
                            <div class="card bg-success" style="background-image: linear-gradient( 112.1deg,  rgba(32,38,57,1) 11.4%, rgba(63,76,119,1) 70.2% ); margin-bottom: 10px;">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-10">
                                            <h5 class="float-left text-white">2.5 BUSD </h5>
                                        </div>
                                        <div class="col-2">
                                            <h5 class="float-right text-white">1</h5>
                                        </div>
                                    </div>

                                    <!--begin: Node Tree -->
                                    <div id="nodetree17" class="chart"></div>
                                    <i class="fa fa-repeat text-white" aria-hidden="true"></i><span id="x40" class="text-white"></span>
                                    <!--end: Node Tree -->
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 col-lg-12 col-xl-12">
                            <div class="card bg-success" style="background-image: linear-gradient( 112.1deg,  rgba(32,38,57,1) 11.4%, rgba(63,76,119,1) 70.2% ); margin-bottom: 10px;">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-10">
                                            <h5 class="float-left text-white">5 BUSD </h5>
                                        </div>
                                        <div class="col-2">
                                            <h5 class="float-right text-white">2</h5>
                                        </div>
                                    </div>

                                    <!--begin: Node Tree -->
                                    <div id="nodetree18" class="chart"></div>
                                    <i class="fa fa-repeat text-white" aria-hidden="true"></i><span id="x41" class="text-white"></span>
                                    <!--end: Node Tree -->
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 col-lg-12 col-xl-12">
                            <div class="card bg-success" style="background-image: linear-gradient( 112.1deg,  rgba(32,38,57,1) 11.4%, rgba(63,76,119,1) 70.2% ); margin-bottom: 10px;">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-10">
                                            <h5 class="float-left text-white">10 BUSD </h5>
                                        </div>
                                        <div class="col-2">
                                            <h5 class="float-right text-white">3</h5>
                                        </div>
                                    </div>

                                    <!--begin: Node Tree -->
                                    <div id="nodetree19" class="chart"></div>
                                    <!--end: Node Tree -->
                                    <i class="fa fa-repeat text-white" aria-hidden="true"></i><span id="x42" class="text-white"></span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 col-lg-12 col-xl-12">
                            <div class="card bg-success" style="background-image: linear-gradient( 112.1deg,  rgba(32,38,57,1) 11.4%, rgba(63,76,119,1) 70.2% ); margin-bottom: 10px;">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-10">
                                            <h5 class="float-left text-white">20 BUSD </h5>
                                        </div>
                                        <div class="col-2">
                                            <h5 class="float-right text-white">4</h5>
                                        </div>
                                    </div>

                                    <!--begin: Node Tree -->
                                    <div id="nodetree20" class="chart"></div>
                                    <i class="fa fa-repeat text-white" aria-hidden="true"></i><span id="x43" class="text-white"></span>
                                    <!--end: Node Tree -->
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 col-lg-12 col-xl-12">
                            <div class="card bg-success" style="background-image: linear-gradient( 112.1deg,  rgba(32,38,57,1) 11.4%, rgba(63,76,119,1) 70.2% ); margin-bottom: 10px;">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-10">
                                            <h5 class="float-left text-white">40 BUSD </h5>
                                        </div>
                                        <div class="col-2">
                                            <h5 class="float-right text-white">5</h5>
                                        </div>
                                    </div>

                                    <!--begin: Node Tree -->
                                    <div id="nodetree21" class="chart"></div>
                                    <i class="fa fa-repeat text-white" aria-hidden="true"></i><span id="x44" class="text-white"></span>
                                    <!--end: Node Tree -->
                                </div>
                            </div>
                        </div>


                        <div class="col-md-12 col-lg-12 col-xl-12">
                            <div class="card bg-success" style="background-image: linear-gradient( 112.1deg,  rgba(32,38,57,1) 11.4%, rgba(63,76,119,1) 70.2% ); margin-bottom: 10px;">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-10">
                                            <h5 class="float-left text-white">80 BUSD </h5>
                                        </div>
                                        <div class="col-2">
                                            <h5 class="float-right text-white">6</h5>
                                        </div>
                                    </div>

                                    <!--begin: Node Tree -->
                                    <div id="nodetree22" class="chart"></div>
                                    <i class="fa fa-repeat text-white" aria-hidden="true"></i><span id="x45" class="text-white"></span>
                                    <!--end: Node Tree -->
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 col-lg-12 col-xl-12">
                            <div class="card bg-success" style="background-image: linear-gradient( 112.1deg,  rgba(32,38,57,1) 11.4%, rgba(63,76,119,1) 70.2% ); margin-bottom: 10px;">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-10">
                                            <h5 class="float-left text-white">160 BUSD </h5>
                                        </div>
                                        <div class="col-2">
                                            <h5 class="float-right text-white">7</h5>
                                        </div>
                                    </div>

                                    <!--begin: Node Tree -->
                                    <div id="nodetree23" class="chart"></div>
                                    <i class="fa fa-repeat text-white" aria-hidden="true"></i><span id="x46" class="text-white"></span>
                                    <!--end: Node Tree -->
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 col-lg-12 col-xl-12">
                            <div class="card bg-success" style="background-image: linear-gradient( 112.1deg,  rgba(32,38,57,1) 11.4%, rgba(63,76,119,1) 70.2% ); margin-bottom: 10px;">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-10">
                                            <h5 class="float-left text-white">320 BUSD </h5>
                                        </div>
                                        <div class="col-2">
                                            <h5 class="float-right text-white">8</h5>
                                        </div>
                                    </div>

                                    <!--begin: Node Tree -->
                                    <div id="nodetree24" class="chart"></div>
                                    <i class="fa fa-repeat text-white" aria-hidden="true"></i><span id="x47" class="text-white"></span>
                                    <!--end: Node Tree -->
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 col-lg-12 col-xl-12">
                            <div class="card bg-success" style="background-image: linear-gradient( 112.1deg,  rgba(32,38,57,1) 11.4%, rgba(63,76,119,1) 70.2% ); margin-bottom: 10px;">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-10">
                                            <h5 class="float-left text-white">640 BUSD </h5>
                                        </div>
                                        <div class="col-2">
                                            <h5 class="float-right text-white">9</h5>
                                        </div>
                                    </div>

                                    <!--begin: Node Tree -->
                                    <div id="nodetree25" class="chart"></div>
                                    <i class="fa fa-repeat text-white" aria-hidden="true"></i><span id="x48" class="text-white"></span>
                                    <!--end: Node Tree -->
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 col-lg-12 col-xl-12">
                            <div class="card bg-success" style="background-image: linear-gradient( 112.1deg,  rgba(32,38,57,1) 11.4%, rgba(63,76,119,1) 70.2% ); margin-bottom: 10px;">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-10">
                                            <h5 class="float-left text-white">1280 BUSD </h5>
                                        </div>
                                        <div class="col-2">
                                            <h5 class="float-right text-white">10</h5>
                                        </div>
                                    </div>

                                    <!--begin: Node Tree -->
                                    <div id="nodetree26" class="chart"></div>
                                    <i class="fa fa-repeat text-white" aria-hidden="true"></i><span id="x49" class="text-white"></span>
                                    <!--end: Node Tree -->
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 col-lg-12 col-xl-12">
                            <div class="card bg-success" style="background-image: linear-gradient( 112.1deg,  rgba(32,38,57,1) 11.4%, rgba(63,76,119,1) 70.2% ); margin-bottom: 10px;">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-10">
                                            <h5 class="float-left text-white">2560 BUSD </h5>
                                        </div>
                                        <div class="col-2">
                                            <h5 class="float-right text-white">11</h5>
                                        </div>
                                    </div>

                                    <!--begin: Node Tree -->
                                    <div id="nodetree27" class="chart"></div>
                                    <i class="fa fa-repeat text-white" aria-hidden="true"></i><span id="x410" class="text-white"></span>
                                    <!--end: Node Tree -->
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 col-lg-12 col-xl-12">
                            <div class="card bg-success" style="background-image: linear-gradient( 112.1deg,  rgba(32,38,57,1) 11.4%, rgba(63,76,119,1) 70.2% ); margin-bottom: 10px;">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-10">
                                            <h5 class="float-left text-white">5120 BUSD </h5>
                                        </div>
                                        <div class="col-2">
                                            <h5 class="float-right text-white">12</h5>
                                        </div>
                                    </div>

                                    <!--begin: Node Tree -->
                                    <div id="nodetree28" class="chart"></div>
                                    <i class="fa fa-repeat text-white" aria-hidden="true"></i><span id="x411" class="text-white"></span>
                                    <!--end: Node Tree -->
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

