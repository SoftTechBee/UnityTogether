<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true"
    CodeFile="MemberByWalletAddress.aspx.cs" Inherits="Admin_MemberByWallet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="page-content">

        <div class="row">
            <div class="col-12">
                <div class="page-title-box d-flex align-items-center justify-content-between">
                    <h4 class="mb-0">Member Details By Wallet Address</h4>
                </div>
            </div>
        </div>

        <div class="alert alert-success alert-dismissible fade show" role="alert" id="sccess" runat="server"
            visible="false">
            <i class="uil uil-check me-2"></i>
            <asp:Label ID="lbsuccess" runat="server" Text="Successfully updated................"></asp:Label>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        <div class="alert alert-danger alert-dismissible fade show" role="alert" id="danger" runat="server"
            visible="false">
            <i class="uil uil-exclamation-octagon me-2"></i>
            <asp:Label ID="lbdanger" runat="server" Text="There is  some thing wrong........."></asp:Label>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        <div class="alert alert-warning alert-dismissible fade show" role="alert" id="warning" runat="server"
            visible="false">
            <i class="uil uil-exclamation-triangle me-2"></i>
            <asp:Label ID="lbwarning" runat="server" Text=" Try Again............"></asp:Label>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        <div class="alert alert-info alert-dismissible fade show mb-0" role="alert" id="info" runat="server"
            visible="false">
            <i class="uil uil-question-circle me-2"></i>
            <asp:Label ID="lbinfo" runat="server" Text="ere is  some thing wrong........."></asp:Label>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>

        <!-- end Alert title -->

        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="form-horizontal">
                        <div class="card-body">
                            <div class="form-group row">
                                <label class="control-label col-lg-3 col-md-3 col-xs-6">Enter Wallet Address</label>

                                <div class="col-lg-6 col-md-3 col-xs-6">
                                    <asp:TextBox ID="txtsearch" CssClass="form-control" runat="server"
                                        placeholder="Enter Wallet Address"></asp:TextBox>
                                </div>

                                <div class="col-md-2 col-xs-6 col-lg-3">
                                    <asp:Button ID="btnSeach" runat="server" Text="Search"
                                        CssClass="btn btn-block btn-success"
                                        OnClick="btnsearch_Click" />
                                </div>
                            </div>
                            <br />

                            <div class="form-group row">
                                <div class="card">
                                    <div class="form-horizontal">
                                        <div class="card-body">
                                            <div class="form-group row mb-2">
                                                <label class="col-lg-6 control-label">UserName</label>
                                                <div class="col-lg-6">
                                                    <div class="form-group">
                                                        <asp:TextBox ID="txtuname" runat="server" ReadOnly="true" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group row mb-2">
                                                <label class="col-lg-6 control-label">Wallet Address</label>
                                                <div class="col-lg-6">
                                                    <div class="form-group">
                                                        <asp:TextBox ID="txtAddress" runat="server" ReadOnly="true" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group row mb-2">
                                                <label class="col-lg-6 control-label">Sponsor</label>
                                                <div class="col-lg-6">
                                                    <div class="form-group">
                                                        <asp:TextBox ID="txtSponsor" runat="server" ReadOnly="true" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group row mb-2">
                                                <label class="col-lg-6 control-label">Sponsor Wallet Address</label>
                                                <div class="col-lg-6">
                                                    <div class="form-group">
                                                        <asp:TextBox ID="txtSponsorAddress" runat="server" ReadOnly="true" class="form-control"></asp:TextBox>
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
            </div>
        </div>
    </div>
</asp:Content>
