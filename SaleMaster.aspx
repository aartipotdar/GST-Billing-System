<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="SaleMaster.aspx.cs" Inherits="GSTBillingSystem.tblSaleMaster" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="slim-pageheader">
            <ol class="breadcrumb slim-breadcrumb">
            </ol>
            <h6 class="slim-pagetitle " style="text-align: start">Sale Product</h6>
        </div>

        <div class="row">
            <div class="col-lg-4 mg-l-120 mg-b-10">
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="icon ion-aperture tx-20 lh-0 op-6"></i></span>
                    </div>
                    <asp:TextBox ID="BillNo" runat="server" CssClass="form-control" placeholder=" Bill No" />
                    <div class="col-sm-12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" ErrorMessage="Add Bill No" ForeColor="Red" ValidationGroup="addSale" ControlToValidate="BillNo" runat="server" />
                    </div>
                </div>
                <!-- input-group -->
            </div>

            <div class="col-lg-4  mg-l-50 mg-b-10  ">
                <div class="input-group ">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fa fa-calendar tx-20 lh-0 op-6"></i></span>
                    </div>
                    <asp:TextBox ID="Date" runat="server" CssClass="form-control" placeholder="Date" TextMode="Date" />
                    <div class="col-sm-12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" ErrorMessage="Add Date" ValidationGroup="addSale" ForeColor="Red" ControlToValidate="Date" runat="server" />
                    </div>
                </div>
                <!-- input-group -->
            </div>
        </div>
        <!-- slim-pageheader -->
        <div class="section-wrapper">
            <div class="form-layout">
                <hr />
                <div class="row">

                    <div class="col-lg-4   mg-b-10">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="icon ion-person tx-20 lh-0 op-6"></i></span>
                            </div>
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                            <asp:TextBox ID="CustomerName" runat="server" CssClass="form-control" placeholder="Customer Name" AutoPostBack="true" OnTextChanged="CustomerName_TextChanged" />
                            <%--<ajax:AutoCompleteExtender ID="CustomerName_AutoCompleteExtender" runat="server" DelimiterCharacters="" CompletionInterval="2" CompletionSetCount="2" MinimumPrefixLength="1" Enabled="True" ServiceMethod="SearchUser" TargetControlID="CustomerName">
                            </ajax:AutoCompleteExtender>--%>
                            <div class="col-sm-12">
                                <asp:RequiredFieldValidator ErrorMessage="Enter Customer Name " ForeColor="Red" ControlToValidate="CustomerName" ValidationGroup="addSale" runat="server" />
                            </div>
                        </div>
                        <!-- input-group -->
                    </div>

                    <div class="col-lg-4   mg-b-10">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fa fa-phone tx-20 lh-0 op-6"></i></span>
                            </div>
                            <asp:TextBox ID="MobileNo" runat="server" CssClass="form-control" MaxLength="10" placeholder="Mobile No" />
                            <div class="col-sm-12">
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ErrorMessage="Enter Mobile No" ForeColor="Red" ValidationGroup="addCustomer" ValidationExpression="^[7-9]\d{9}$" ControlToValidate="MobileNo" runat="server" />

                            </div>
                        </div>
                        <!-- input-group -->
                    </div>

                    <div class="col-lg-4   mg-b-10">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fa fa-envelope tx-20 lh-0 op-6"></i></span>
                            </div>
                            <asp:TextBox ID="EmailId" runat="server" CssClass="form-control" placeholder="Email Id" />
                            <div class="col-sm-12">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator21" ErrorMessage="Email Id" ForeColor="Red" ValidationGroup="addSale" ControlToValidate="EmailId" runat="server" />
                            </div>
                        </div>
                        <!-- input-group -->
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-4   mg-b-10">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fa fa-book tx-20 lh-0 op-6"></i></span>
                            </div>
                            <asp:TextBox ID="GSTNo" runat="server" CssClass="form-control" placeholder="GST No" />
                            <div class="col-sm-12">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" ErrorMessage="Add GST No" ForeColor="Red" ValidationGroup="addSale" ControlToValidate="GSTNo" runat="server" />
                            </div>
                        </div>
                        <!-- input-group -->
                    </div>

                    <div class="col-lg-4   mg-b-10">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fa fa-home tx-20 x-16 lh-0 op-6"></i></span>
                            </div>
                            <textarea id="Address" runat="server" class="form-control" placeholder="Address"></textarea>
                            <%-- <asp:TextBox id="Address" runat="server" CssClass="form-control"  placeholder="Address" TextMode="MultiLine" Rows="10"></asp:TextBox>--%>
                        </div>
                        <!-- input-group -->
                    </div>
                </div>
                <hr />
                  <div class="row">
                    <div class="col-lg-4">
                        <div class="form-group mg-b-10-force">
                            <asp:DropDownList runat="server" CssClass="form-control" OnSelectedIndexChanged="Product_SelectedIndexChanged" AutoPostBack="true" data-placeholder="Select Product" ID="Product">
                            </asp:DropDownList>
                        </div>
                    </div>
                    <!-- col-4 -->

                    <div class="col-lg-4  mg-b-10">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fa fa-rupee tx-20 lh-0 op-6"></i></span>
                            </div>
                            <asp:TextBox ID="Price" runat="server" CssClass="form-control" placeholder="Price" />
                            <div class="col-sm-12">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ErrorMessage="Enter Price" ForeColor="Red" ValidationGroup="addSale" ControlToValidate="Price" runat="server" />
                            </div>
                        </div>
                        <!-- input-group -->
                    </div>
                    <!-- col-4 -->

                    <div class="col-lg-4  mg-b-10">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fa fa-balance-scale tx-20 lh-0 op-6"></i></span>
                            </div>
                            <asp:TextBox ID="Quantity" runat="server" CssClass="form-control" placeholder="Quantity" OnTextChanged="Quantity_TextChanged" AutoPostBack="true" />
                            <div class="col-sm-12">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ErrorMessage="Add Quantity" ForeColor="Red" ValidationGroup="addSale" ControlToValidate="Quantity" runat="server" />
                            </div>
                        </div>
                        <!-- input-group -->
                    </div>
                    <!-- col-4 -->
                </div>

                <div class="row">

                    <div class="col-md-4">
                        <div class="form-group mg-b-10-force">
                            <asp:DropDownList runat="server" CssClass="form-control" ID="ddlGSTType">
                                <asp:ListItem Text="Choose GST Type" />
                                <asp:ListItem Text="CGST" />
                                <asp:ListItem Text="SGST" />
                                <asp:ListItem Text="IGST" />
                            </asp:DropDownList>
                        </div>
                    </div>
                    <!-- col-4 -->

                    <div class="col-lg-4  mg-b-10">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fa fa-sliders tx-20 lh-0 op-6"></i></span>
                            </div>
                            <asp:TextBox ID="GSTPercentage" runat="server" CssClass="form-control" placeholder="GST %" />
                            <div class="col-sm-12">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ErrorMessage="Add GST%" ForeColor="Red" ValidationGroup="addSale" ControlToValidate="GSTPercentage" runat="server" />
                            </div>
                        </div>
                        <!-- input-group -->
                    </div>
                    <!-- col-4 -->

                    <div class="col-lg-4  mg-b-10">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fa fa-calculator tx-20 lh-0 op-6"></i></span>
                            </div>
                            <asp:TextBox ID="Total" runat="server" CssClass="form-control" placeholder="Total" />
                            <div class="col-sm-12">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ErrorMessage="Enter Total" ForeColor="Red" ValidationGroup="addSale" ControlToValidate="Total" runat="server" />
                            </div>
                        </div>
                        <!-- input-group -->
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <asp:Button Text="Add Product" ID="btnAddSalesMaster" OnClick="Button1_Click" runat="server" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <asp:GridView runat="server" ID="grdvProductsBySale" AutoGenerateColumns="true">
                        </asp:GridView>
                    </div>
                </div>

                <hr />

                <div class="row">
                    <div class="col-lg-4   mg-b-10">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fa fa-map-marker tx-20 lh-0 op-6"></i></span>
                            </div>
                            <asp:TextBox ID="PlaceToSupply" runat="server" CssClass="form-control" placeholder="Place To Supply" />
                            <div class="col-sm-12">
                                <asp:RequiredFieldValidator ErrorMessage="Enter Place to Supply" ForeColor="red" ControlToValidate="PlaceToSupply" ValidationGroup="addSale" runat="server" />
                            </div>
                        </div>
                        <!-- input-group -->
                    </div>
                    <!-- col-4 -->

                    <div class="col-lg-4  mg-b-10">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fa fa-truck tx-20 lh-0 op-6"></i></span>
                            </div>
                            <asp:TextBox ID="Transport" runat="server" CssClass="form-control" placeholder="Transport" Text="0"/>
                            <div class="col-sm-12">
                                <asp:RequiredFieldValidator ErrorMessage="Enter Transport" ForeColor="red" ControlToValidate="Transport" ValidationGroup="addSale" runat="server" />
                            </div>
                        </div>
                        <!-- input-group -->
                    </div>
                    <!-- col-4 -->

                    <div class="col-lg-4  mg-b-10">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fa fa-money tx-20 lh-0 op-6"></i></span>
                            </div>
                            <asp:TextBox runat="server" ID="OtherCharges" CssClass="form-control" Text="0" placeholder="Other Charges" />
                            <div class="col-sm-12">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="Enter Other Charges" ForeColor="red" ValidationGroup="addSale" ControlToValidate="OtherCharges" runat="server" />
                            </div>
                        </div>
                        <!-- input-group -->
                    </div>
                    <!-- col-4 -->

                    <%-- <div class="col-lg-4 mg-b-10">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fa fa-sliders tx-20 lh-0 op-6"></i></span>
                            </div>
                            <asp:TextBox ID="RoundOff" runat="server" CssClass="form-control" placeholder="Round Off" />
                            <div class="col-sm-12">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ErrorMessage="Enter Round Off" ForeColor="red" ValidationGroup="addSale" ControlToValidate="RoundOff" runat="server" />
                            </div>
                        </div>
                        <!-- input-group -->
                    </div>
                    <!-- col-4 -->--%>

                    <div class="col-lg-4 mg-b-10">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fa fa-tags tx-20 lh-0 op-6"></i></span>
                            </div>
                            <asp:TextBox ID="Discount" runat="server" CssClass="form-control" Text="0" OnTextChanged="Discount_TextChanged" AutoPostBack="true" placeholder="Discount" />
                            <div class="col-sm-12">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ErrorMessage="Add Discount" ForeColor="red" ValidationGroup="addSale" ControlToValidate="Discount" runat="server" />
                            </div>
                        </div>
                        <!-- input-group -->
                    </div>
                    <!-- col-4 -->

                    <div class="col-lg-4 mg-b-10">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fa fa-calculator tx-20 lh-0 op-6"></i></span>
                            </div>
                            <asp:TextBox ID="TotalAmount" runat="server" CssClass="form-control" placeholder="Total Amount" Text="0" />
                            <div class="col-sm-12">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ErrorMessage="Add Total Amount" ForeColor="red" ValidationGroup="addSale" ControlToValidate="TotalAmount" runat="server" />
                            </div>
                        </div>
                        <!-- input-group -->
                    </div>
                    <!-- col-4 -->


                </div>

                <div class="row">
                    <div class="col-lg-4 mg-b-10">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fa fa-rupee tx-20 lh-0 op-6"></i></span>
                            </div>
                            <asp:TextBox ID="RupeesInword" runat="server" CssClass="form-control" placeholder="Rupees Inword" />
                            <div class="col-sm-12">
                                <asp:RequiredFieldValidator ErrorMessage="Add Rupees in Word" ForeColor="Red" ControlToValidate="RupeesInword" ValidationGroup="addSale" runat="server" />
                            </div>
                        </div>
                        <!-- input-group -->
                    </div>
                    <!-- col-4 -->

                    <div class="col-md-4">
                        <div class="form-group mg-b-10-force">
                            <asp:DropDownList runat="server" CssClass="form-control" ID="Paymentmtd">
                                <asp:ListItem Text="Payment Method" />
                                <asp:ListItem Text="Cash" />
                                <asp:ListItem Text="Card" />
                                <asp:ListItem Text="Online" />
                            </asp:DropDownList>
                        </div>
                    </div>
                    <!-- col-4 -->

                </div>
                <hr />
              
                <!-- col-4 -->

                <%--<div class="container form-layout-footer pd-y-30 tx-center">
                    <asp:Button Text="Add" ID="btn1" runat="server" CssClass="btn btn-primary bd-0" ValidationGroup="addSale" OnClick="Button1_Click" />
                </div>--%>

                <%--   <div>
                   <div class="table-wrapper">

                    <asp:GridView runat="server" CssClass="table table-bordered table-striped display responsive nowrap" ID="gd" AutoGenerateColumns="true">
                    </asp:GridView>
                </div>
                   </div>
                --%>
                <!-- form-layout-footer -->


                <!-- col-sm-4 -->
            </div>
            <!-- row -->

            <div class="row pd-t-20">
                <div class="col-lg-4">
                </div>
                <!-- col-4 -->
            </div>
            <!-- row -->
            <%--    </div>
        <!-- section-wrapper -->--%>
        </div>

        <div class="slim-footer mg-t-0">
            <div class="container-fluid">
                <p>Copyright 2019 &copy; All Right Reserved.Universal GST Billing System </p>
                <%-- <p>Designed by: <a href="">xyz</a></p>--%>
            </div>
        </div>
        <%--       </div>
            <!-- container-fluid -->
        </div>
        <!-- slim-footer -->
        --%>
    </div>
</asp:Content>
