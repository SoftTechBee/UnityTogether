<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="RoyatyUser30.aspx.cs" Inherits="Admin_rptMachingIncome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

  <!------Msgbox End---->
     <div class="box-body">
              <div class="alert alert-danger alert-dismissible" id="danger"  runat="server"  visible="false">
              
                <h4><i class="icon fa fa-ban"></i> Alert!</h4>
            <asp:Label ID="lbdanger" runat="server" Text="There is  some thing wrong........."></asp:Label> 
              </div>
              <div class="alert alert-info alert-dismissible" id="info" runat="server"  visible="false">
              
                <h4><i class="icon fa fa-info"></i> Alert!</h4>
               <asp:Label ID="lbinfo" runat="server" Text="ere is  some thing wrong........."></asp:Label>  
             
              </div>
              <div class="alert alert-warning alert-dismissible" id="warning" runat="server"  visible="false">
              
                <h4><i class="icon fa fa-warning"></i> Alert!</h4>
               <asp:Label ID="lbwarning" runat="server" Text=" Try Again............"></asp:Label> 
            
              </div>
              <div class="alert alert-success alert-dismissible" id="sccess" runat="server" visible="false" >
              
                <h4><i class="icon fa fa-check"></i> Alert!</h4>
                  <asp:Label ID="lbsuccess" runat="server" Text="Successfully updated................"></asp:Label>  
              </div>
            </div>
    <!-----Alert End----->

    <div class="card">
        <div class="form-horizontal">
            <div class="card-body">
                <div class="form-group row">
                    <div class="col-lg-10">
                        <h2 class="card-title">Royalty Achieved Only 30 Direct</h2>
                    </div>

                    <div class="col-lg-2">
                        <asp:Button ID="btnExportToExcel" CssClass="btn btn-block  btn-dark" Text="ExportToExcel" OnClick="btnExportToExcel_Click" runat="server" />
                    </div>
                </div>

                <div class=" form-group row">
                    <label class="control-label col-lg-3 col-md-3 col-xs-6 ">Enter UserName</label>
                    <label class="control-label  col-lg-3 col-md-3 col-xs-6 ">Select FromDate</label>
                    <label class="control-label col-lg-3 col-md-3 col-xs-6 ">Select ToDate</label>
                </div>

                <div class=" form-group row">
                    <div class="col-lg-3 col-md-3 col-xs-6 ">
                        <asp:TextBox ID="txtsearch" CssClass="form-control" runat="server" placeholder="Enter UserName"></asp:TextBox>
                    </div>

                    <div class="col-lg-3 col-md-3 col-xs-6 ">
                        <div class='input-group date' id='datetimepicker6'>
                            <asp:TextBox ID="txtfromdate" class="form-control" type="date" runat="server" placeholder="Select Form  Date "></asp:TextBox>
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-3 col-xs-6 ">
                        <div class='input-group date' id='datetimepicker7'>
                            <asp:TextBox ID="txttodate" class="form-control" type="date" runat="server" placeholder="Select TO  Date "></asp:TextBox>
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                        </div>
                    </div>

                    <div class="col-md-2 col-xs-6 col-lg-3">
                        <asp:Button ID="btnSeach" runat="server" Text="Search"  CssClass="btn btn-block btn-success btn-sm" OnClick="btnsearch_Click" />
                    </div>
                </div>

                <hr />
                <div class="form-group">
                    <div class="col-lg-12 col-md-12 col-xs-12 col-sm-12" style="overflow: auto;">

                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-striped table-hover"
                             AllowPaging="True" PageSize="50" OnPageIndexChanging="GridView1_PageIndexChanging" ShowFooter="true">
                            <Columns>
                                <asp:TemplateField HeaderText="#">
                                    <ItemTemplate>
                                        <%# Container.DataItemIndex + 1 %>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:BoundField DataField="DOA" HeaderText="Date" DataFormatString="{0:dd/MM/yyyy}" />

                                
                                <asp:BoundField DataField="username" HeaderText="UserName" />

                                <asp:BoundField DataField="Amount" HeaderText="Remark" />


                               
                            </Columns>

                            <FooterStyle CssClass="font-weight-bold" />
                        </asp:GridView>



                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

