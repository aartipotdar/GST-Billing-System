<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="GSTBillingSystem.Product1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style></style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
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
                        <div class="col-lg-4">
                            <div class="form-group mg-b-10-force">
                               

                                <asp:DropDownList runat="server" ID="CategoryId" CssClass="form-control select2" OnSelectedIndexChanged="CategoryId_SelectedIndexChanged" AutoPostBack="true">
                                </asp:DropDownList>
                                <div class="col-sm-12">
                                    <asp:RequiredFieldValidator ErrorMessage="Select Category" ControlToValidate="CategoryId" ValidationGroup="addProduct" runat="server" />
                                </div>
                            </div>
                        </div>
                        <!-- col-4 -->



                        <div class="col-lg-4">
                            <div class="form-group mg-b-10-force">
                                
                                <asp:DropDownList runat="server" ID="BrandId" CssClass="form-control select2">
                                </asp:DropDownList>
                                <div class="col-sm-12">
                                    <asp:RequiredFieldValidator ErrorMessage="Select Brand" ControlToValidate="BrandId" runat="server" />
                                </div>
                            </div>
                        </div>
                        <!-- col-4 -->
                    </div>


                    <div class="row">
                        <div class="col-lg-4">
                            <div class="input-group  mg-b-10">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fa fa-dropbox tx-20 lh-0 op-6"></i></span>
                                </div>
                                <asp:TextBox ID="Product" runat="server" CssClass="form-control" placeholder=" Product Name" />
                                <div class="col-sm-12">
                                    <asp:RequiredFieldValidator ErrorMessage="Enter Product Name " ControlToValidate="Product" ValidationGroup="addProduct" ForeColor="red" runat="server" />
                                </div>
                            </div>
                            <!-- input-group -->
                        </div>

                        <!-- col-4 -->

                        <div class="col-lg-4  mg-b-10">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fa fa-sliders tx-20 lh-0 op-6"></i></span>
                                </div>
                                <asp:TextBox ID="GST" runat="server" CssClass="form-control" placeholder="  GST%" />
                                <div class="col-sm-12">
                                    <asp:RequiredFieldValidator ErrorMessage="Enter GST %" ControlToValidate="GST" ValidationGroup="addProduct" ForeColor="red" runat="server" />
                                </div>
                            </div>
                            <!-- input-group -->
                        </div>

                        <div class="col-lg-4  mg-b-10">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fa fa-server tx-20 lh-0 op-6"></i></span>
                                </div>
                                <asp:TextBox ID="Barcode" runat="server" CssClass="form-control" placeholder=" Barcode" />
                                <div class="col-sm-12">
                                    <asp:RequiredFieldValidator ErrorMessage="Enter Barcode" ControlToValidate="Barcode" ValidationGroup="addProduct" ForeColor="red" runat="server" />
                                </div>
                            </div>
                            <!-- input-group -->
                        </div>

                        <div class="col-lg-4 mg-b-10">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fa fa-fax tx-20 lh-0 op-6"></i></span>
                                </div>
                                <asp:TextBox ID="HSN" runat="server" CssClass="form-control" placeholder="HSN" />
                                <div class="col-sm-12">
                                    <asp:RequiredFieldValidator ErrorMessage="Enter HSN" ControlToValidate="HSN" ValidationGroup="addProduct" ForeColor="red" runat="server" />
                                </div>
                            </div>
                            <!-- input-group -->
                        </div>


                        <div class="col-lg-4 mg-b-10">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fa fa-crosshairs tx-20 lh-0 op-6"></i></span>
                                </div>
                                <asp:TextBox ID="ProductShortCode" runat="server" CssClass="form-control" placeholder="Product Short Name" />
                                <div class="col-sm-12">
                                    <asp:RequiredFieldValidator ErrorMessage="Enter Product Short Code" ForeColor="red" ControlToValidate="ProductShortCode" ValidationGroup="addProduct" runat="server" />
                                </div>
                            </div>
                            <!-- input-group -->
                        </div>

                        <div class="col-lg-4 mg-b-10">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fa fa-rupee tx-20 lh-0 op-6"></i></span>
                                </div>
                                <asp:TextBox ID="SaleRate" runat="server" CssClass="form-control" placeholder="Sale Rate" />
                                <div class="col-sm-12">
                                    <asp:RequiredFieldValidator ErrorMessage="Enter Sale Rate" ControlToValidate="SaleRate" ForeColor="red" ValidationGroup="addProduct" runat="server" />
                                </div>
                            </div>
                            <!-- input-group -->
                        </div>

                        <div class="col-lg-4   mg-b-10">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fa fa-rupee tx-20 lh-0 op-6"></i></span>
                                </div>
                                <asp:TextBox ID="PurchaseRate" runat="server" CssClass="form-control" placeholder="Purchase Rate" />
                                <div class="col-sm-12">
                                    <asp:RequiredFieldValidator ErrorMessage="Enter Purchase Rate" ForeColor="red" ControlToValidate="PurchaseRate" ValidationGroup="addProduct" runat="server" />
                                </div>
                            </div>
                            <!-- input-group -->
                        </div>

                        <div class="col-lg-4  mg-b-10">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fa fa-database tx-20 lh-0 op-6"></i></span>
                                </div>
                                <asp:TextBox ID="StockQuantity" runat="server" CssClass="form-control" placeholder="Stock Quantity" />
                                <div class="col-sm-12">
                                    <asp:RequiredFieldValidator ErrorMessage="Enter Stock Quantity" ControlToValidate="StockQuantity" ForeColor="red" ValidationGroup="addProduct" runat="server" />
                                </div>
                            </div>
                            <!-- input-group -->
                        </div>






                        <div class="col-lg-4  mg-b-10">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon ion-compose tx-20 lh-0 op-6"></i></span>
                                </div>
                                <asp:TextBox ID="Description" runat="server" CssClass="form-control" placeholder="Description" />
                                <div class="col-sm-12">
                                    <asp:RequiredFieldValidator ErrorMessage="Description" ControlToValidate="Description" ForeColor="red" ValidationGroup="addProduct" runat="server" />
                                </div>
                            </div>
                            <!-- input-group -->
                        </div>

                       <%-- <div class="col-lg-4  mg-b-10">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="icon ion-person tx-16 lh-0 op-6"></i></span>
                                </div>
                                <asp:TextBox ID="RowTotal" runat="server" CssClass="form-control" placeholder="Row Total" />
                                <div class="col-sm-12">
                                    <asp:RequiredFieldValidator ErrorMessage="Enter Row Total" ForeColor="red" ControlToValidate="RowTotal" ValidationGroup="addProduct" runat="server" />
                                </div>
                            </div>
                            <!-- input-group -->
                        </div>--%>



                        <%-- <div class="col-lg-3  mg-t-20">
                    <label class="ckbox">
                        <input type="checkbox" checked/><span>IsActive</span>
                    </label>
                </div>

                <div class="col-lg-3  mg-t-20">
                    <label class="ckbox">
                        <input type="checkbox" checked/><span>IsInventory</span>
                    </label>
                </div>--%>





                        <div class="  container form-layout-footer pd-y-30 tx-center">
                            <%-- <button class="btn btn-primary bd-0  ">Add</button>--%>
                            <asp:Button Text="Add" ID="btn1" runat="server" CssClass="btn btn-primary bd-0" ValidationGroup="addProduct" OnClick="Button1_Click" />
                        </div>
                        <div>
                            <div class="table-wrapper">

                                <asp:GridView runat="server" DataKeyNames="ProductId" CssClass="table table-bordered table-striped display responsive nowrap" ID="gd" OnRowDeleting="gd_RowDeleting" AutoGenerateColumns="false">
                                    <Columns>
                                        <asp:TemplateField HeaderText="Sr. No.">
                                            <ItemTemplate>
                                                <asp:Label Text='<%# Eval("ProductId") %>' runat="server" Visible="false" />
                                                <asp:Label ID="Label1" Text='<%# Container.DataItemIndex+1%>' runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField  HeaderText="Product Name">
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" Width="20px" Text='<%# Eval("Product") %>' runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <%--<asp:TemplateField HeaderText="Category Name">
                                            <ItemTemplate>
                                                <asp:Label ID="Label3" Text='<%# Eval("CategoryName") %>' runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Brand Name">
                                            <ItemTemplate>
                                                <asp:Label ID="Label4" Text='<%# Eval("BrandId") %>' runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>--%>

                                        <asp:TemplateField HeaderText="GST %">
                                            <ItemTemplate>
                                                <asp:Label ID="Label5" Text='<%# Eval("GST") %>' runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Barcode">
                                            <ItemTemplate>
                                                <asp:Label ID="Label6" Text='<%# Eval("Barcode") %>' runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                       <%-- <asp:TemplateField HeaderText="HSN">
                                            <ItemTemplate>
                                                <asp:Label ID="Label7" Text='<%# Eval("HSN") %>' runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Product Short Name">
                                            <ItemTemplate>
                                                <asp:Label ID="Label8" Text='<%# Eval("ProductShortCode") %>' runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>--%>

                                        <asp:TemplateField HeaderText="Sale Rate">
                                            <ItemTemplate>
                                                <asp:Label ID="Label9" Text='<%# Eval("SaleRate") %>' runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                       <%-- <asp:TemplateField HeaderText="Purchase Rate">
                                            <ItemTemplate>
                                                <asp:Label ID="Label10" Text='<%# Eval("PurchaseRate") %>' runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Stock Quantity">
                                            <ItemTemplate>
                                                <asp:Label ID="Label11" Text='<%# Eval("StockQuantity") %>' runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Description">
                                            <ItemTemplate>
                                                <asp:Label ID="Label12" Text='<%# Eval("Discription") %>' runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Row Total">
                                            <ItemTemplate>
                                                <asp:Label ID="Label13" Text='<%# Eval("RowTotal") %>' runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
--%>

                                        <asp:TemplateField HeaderText="Delete">
                                            <ItemTemplate>
                                                <asp:Button Text="Delete" ID="btn_DeleteProduct" CssClass="btn btn-danger" CommandName="Delete" runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>

                                </asp:GridView>
                            </div>
                        </div>
                        <!-- form-layout-footer -->



                    </div>
                </div>



                <!-- col-sm-4 -->
            </div>
            <!-- row -->

            <div class="row pd-t-20">
                <div class="col-lg-4">
                </div>
                <!-- col-4 -->

            </div>
            <!-- row -->
        </div>
        <!-- section-wrapper -->


        <div class="slim-footer mg-t-0">
            <div class="container-fluid">
                <p>Copyright 2019 &copy; All Right Reserved.Universal GST Billing System </p>
                <%-- <p>Designed by: <a href="">xyz</a></p>
                --%>
            </div>
            <!-- container-fluid -->
        </div>
        <!-- slim-footer -->
    </div>
</asp:Content>
