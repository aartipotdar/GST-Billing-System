<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="SaleReport.aspx.cs" Inherits="GSTBillingSystem.SaleReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="slim-pageheader">
            <ol class="breadcrumb slim-breadcrumb">
            </ol>
            <h6 class="slim-pagetitle">ADD Product</h6>
        </div>
        <!-- slim-pageheader -->
        <div class="section-wrapper">
            <div class="form-layout">
                <div class="row">
                    <asp:GridView ID="grdSaleReport" runat="server"  CssClass="table table-bordered table-striped display responsive nowrap" AutoGenerateColumns="false">
                        <Columns>
                              <asp:TemplateField HeaderText="Sr. No.">
                                <ItemTemplate>                                    
                                    <asp:Label ID="Label2" Text='<%# Container.DataItemIndex+1%>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="billno" HeaderText="BillNo" />
                            <asp:BoundField DataField="customername" HeaderText="Customer" />
                            <asp:BoundField DataField="mobileno" HeaderText="MobileNo" />
                            <asp:BoundField DataField="date" HeaderText="SaleDate" />
                            <asp:BoundField DataField="totalSaleAmount" HeaderText="Total Sale Amount" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
