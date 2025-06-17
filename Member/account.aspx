<%@ Page Title="" Language="C#" MasterPageFile="~/member/MasterPage.master" AutoEventWireup="true"
  CodeFile="account.aspx.cs" Inherits="Admin_Account" %>

  <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<%--      <style>
          .table1 {
               --bs-table-bg: none !important; 
               font-weight:800 !important;
               --bs-table-color: #fff !important;
          }

          .cardoo{
              background: linear-gradient(to right, #c31432, #240b36) !important;
          }
      </style>--%>

        <div class="alert alert-danger alert-dismissible" id="danger" runat="server" visible="false">
          <h4><i class="icon fa fa-ban"></i> Alert!</h4>
          <asp:Label ID="lbdanger" runat="server" Text="There is  some thing wrong........."></asp:Label>
        </div>

        <div class="row">
          <div class="col-lg-12">
            <div class="card cardoo">
              <div class="card-header">
                <h5 class="card-title">All Income Summary</h5>
              </div>

              <div class="card-body" style="overflow:auto;">

                <asp:gridview ID="grdData" runat="server" AutoGenerateColumns="False" CellPadding="10" PageSize="100"
                  Font-Size="Large" CssClass="table table1 table-bordered" GridLines="Both"
                  Width="100%" AllowPaging="True" OnPageIndexChanging="grdData_PageIndexChanging" ShowFooter="true">

                  <columns>

                    <asp:TemplateField HeaderText="#">
                      <ItemTemplate>
                        <%# Container.DataItemIndex + 1 %>
                      </ItemTemplate>
                      <ItemStyle Width="10%" />
                    </asp:TemplateField>
                    <asp:boundfield DataField="username" HeaderText="UserName"></asp:boundfield>
                    <asp:boundfield DataField="date" DataFormatString="{0:d}" HeaderText="Date"></asp:boundfield>
                    <asp:boundfield DataField="Remark" HeaderText="Remark"></asp:boundfield>
                    <asp:boundfield DataField="Credit" HeaderText="Cr"></asp:boundfield>
                    <asp:boundfield DataField="Debit" HeaderText="Dr"></asp:boundfield>
                  </columns>

                </asp:gridview>
              </div>
            </div>
          </div>
        </div>
  </asp:Content>