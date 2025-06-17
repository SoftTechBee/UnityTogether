<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MasterPage.master" AutoEventWireup="true" CodeFile="S2Pack.aspx.cs" Inherits="User_S2Pack" %>


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
                    <div id="x42main" class="logotypeX4">
                        <h2 class="mb-3" style="color: #F8B940 !important; text-align: center;">NON - WORKING PROGRAM</h2>
                    </div>

                    <div class="row">
                        <div class="col-md-12 col-lg-12 col-xl-12">
                              <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand"
                                OnItemDataBound="Repeater1_ItemDataBound">
                                <ItemTemplate>
                                    <asp:HiddenField ID="hndpackage" Value='<%# Eval("PoolNo") %>' runat="server" />
                                    <asp:Button ID="btnBuy" runat="server" CommandArgument='<%#Eval("PoolNo") %>' CommandName="BuyNow" CssClass="btn btn-success btn-block btn-width mb-1" Text='<%# Eval("name") %>' />
                                    <div class="table-responsive" id="divCheck" visible="false" runat="server" style="border:solid #fff 2px;">
                                        <table class="table basic-table table-hover" id="tblpackage" runat="server">
                                            <thead>
                                                <tr>
                                                    <td style=" background-color: #28a745; color: #fff"><%#Eval("PoolName") %></td>
                                                    <td style="background-color: #28a745; color: #fff"><%# Eval("name") %></td>
                                                </tr>
                                            </thead>
                                            <tbody>
                                               
                                                <tr >
                                                    <td style=" color: #fff">Level-1 Team</td>
                                                    <td style=" color: #fff">
                                                        <asp:Label ID="lblevel1"  runat="server" Text=""></asp:Label></td>
                                                </tr>

                                                <tr>
                                                 <td style=" color: #fff">Level-2 Team</td>
                                                    <td style=" color: #fff">
                                                        <asp:Label ID="lblevel2" runat="server" Text=""></asp:Label></td>
                                                </tr>

                                                <tr>
                                                  <td style=" color: #fff">Level-3 Team</td>
                                                    <td style=" color: #fff">
                                                       
                                               
                                                        <asp:Label ID="lbLevel3"  runat="server" Text="0.0"></asp:Label>
                                                </td>
                                                </tr>
                                                <tr>
                                                  <td style=" color: #fff">Level-4 Team</td>
                                                    <td style=" color: #fff">
                                                       
                                               
                                                        <asp:Label ID="lbLevel4"  runat="server" Text="0.0"></asp:Label>
                                                </td>
                                                </tr>
                                                <tr>
                                                  <td style=" color: #fff">Level-5 Team</td>
                                                    <td style=" color: #fff">
                                                       
                                               
                                                        <asp:Label ID="lbLevel5"  runat="server" Text="0.0"></asp:Label>
                                                </td>
                                                </tr>
                                                <tr>
                                                  <td style=" color: #fff">Level-6 Team</td>
                                                    <td style=" color: #fff">
                                                       
                                               
                                                        <asp:Label ID="lbLevel6"  runat="server" Text="0.0"></asp:Label>
                                                </td>
                                                </tr>
                                                <tr>
                                                  <td style=" color: #fff">Level-7 Team</td>
                                                    <td style=" color: #fff">
                                                       
                                               
                                                        <asp:Label ID="lbLevel7"  runat="server" Text="0.0"></asp:Label>
                                                </td>
                                                </tr>
                                                <tr>
                                                    <td style=" color: #fff">Recycle</td>
                                                    <td style=" color: #fff">
                                                        <asp:Label ID="lbRecycle" runat="server" Text="0.0"></asp:Label></td>
                                                </tr>
                                               

                                            </tbody>
                                        </table>
                                    </div>
                                    <br />
                                </ItemTemplate>

                            </asp:Repeater>
                            
                        </div>
                       
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

