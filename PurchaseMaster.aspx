<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="PurchaseMaster.aspx.cs" Inherits="GSTBillingSystem.PurchaseMaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    
    <div class="container">
        <div class="slim-pageheader">
            <ol class="breadcrumb slim-breadcrumb">
                
            </ol>
            <h6 class="slim-pagetitle">Purchase Product</h6>
        </div>

        <div class="row">
             <div class="col-lg-4  mg-b-10">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="icon ion-aperture tx-20 lh-0 op-6"></i></span>
                        </div>
                        <asp:TextBox ID="PurchaseBillNo" runat="server" CssClass="form-control" placeholder="Purchase Bill No" />
                         <div class="col-sm-12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="Enter Bill No" ForeColor="red" ValidationGroup="addPurchase" ControlToValidate="PurchaseBillNo" runat="server" />
                         </div>
                        </div>
                    <!-- input-group -->
                </div>
              <!-- col-4 -->
             <div class="col-lg-4 mg-b-10">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fa fa-calendar tx-20 lh-0 op-6"></i></span>
                        </div>
                        <asp:TextBox ID="PurchaseDate" runat="server" CssClass="form-control" placeholder="Purchase Date" />
                        <div class="col-sm-12">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ErrorMessage="Enter Date" ForeColor="red" ValidationGroup="addPurchase" ControlToValidate="PurchaseDate" runat="server" />
                    </div>
                        </div>
                    <!-- input-group -->
                </div>
              <!-- col-4 -->
             </div>

           
        <!-- slim-pageheader -->

           
       <div class="section-wrapper">
       <div class="form-layout">
          <h4>PurchaseMaster</h4>
          <hr/>
    
       
         <div class="row">
         <div class="col-lg-4  mg-b-10">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="icon ion-person tx-20 lh-0 op-6"></i></span>
                        </div>
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                            
                        <asp:TextBox ID="VendorName" runat="server" CssClass="form-control" AutoPostBack="true" OnTextChanged="VendorName_TextChanged1" placeholder="Vendor Name" />
                       <div class="col-sm-12">  
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ErrorMessage="enter Vendor Name"  ForeColor="red" ValidationGroup="addPurchase" ControlToValidate="VendorName" runat="server" />
                    </div>
                        </div>
                    <!-- input-group -->
                </div>
              <!-- col-4 -->

               <div class="col-lg-4  mg-b-10">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fa fa-phone tx-20 lh-0 op-6"></i></span>
                        </div>
                        <asp:TextBox ID="MobileNo" runat="server" CssClass="form-control"   MaxLength="10" placeholder="Mobile No" />
                       <div class="col-sm-12">  
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ErrorMessage="Enter Mobile No" ForeColor="Red" ValidationGroup="addCustomer" ValidationExpression="^[7-9]\d{9}$" ControlToValidate="MobileNo" runat="server" />

                    </div>
                        </div>
                    <!-- input-group -->
                </div>
              <!-- col-4 -->

                <div class="col-lg-4  mg-b-10">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fa fa-envelope-o tx-20 lh-0 op-6"></i></span>
                        </div>
                        <asp:TextBox ID="EmailId" runat="server" CssClass="form-control" placeholder="EmailId" />
                       <div class="col-sm-12">  
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ErrorMessage="Enter EmailId"  ForeColor="red" ValidationGroup="addPurchase" ControlToValidate="EmailId" runat="server" />
                    </div>
                        </div>
                    <!-- input-group -->
                </div>
              <!-- col-4 -->

               <div class="col-lg-4 mg-b-10">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fa fa-book tx-20 lh-0 op-6"></i></span>
                        </div>
                        <asp:TextBox ID="GSTNo" runat="server" CssClass="form-control" placeholder="GSTNo" />
                        <div class="col-sm-12">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ErrorMessage="Enter GSTNo"  ForeColor="red" ValidationGroup="addPurchase" ControlToValidate="GSTNo" runat="server" />
                    </div>
                        </div>
                    <!-- input-group -->
                </div>




              <div class="col-lg-4  mg-b-10">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fa fa-building tx-20 lh-0 op-6"></i></span>
                        </div>
                        <asp:TextBox ID="CompanyName" runat="server" CssClass="form-control" placeholder="Company Name" />
                        <div class="col-sm-12">
                         <asp:RequiredFieldValidator ErrorMessage="Enter Comapany Name" ForeColor="red" ValidationGroup="addPurchase" ControlToValidate="CompanyName" runat="server" />
                    </div>
                        </div>
               </div>
         </div>
           <hr/>
           <div class="row">

            <div class="col-lg-4">
                        <div class="form-group mg-b-10-force">
                            <asp:DropDownList runat="server" CssClass="form-control"  AutoPostBack="true" OnSelectedIndexChanged="Product_SelectedIndexChanged" data-placeholder="Select Product"  ID="Product">
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
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ErrorMessage="Enter Price" ForeColor="red" ValidationGroup="addPurchase" ControlToValidate="Price" runat="server" />
                         </div>
                        </div>
                    <!-- input-group -->
                </div>

                <div class="col-lg-4  mg-b-10">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fa fa-database tx-20 lh-0 op-6"></i></span>
                        </div>
                        <asp:TextBox ID="Quantity" runat="server" CssClass="form-control" AutoPostBack="true" OnTextChanged="Quantity_TextChanged" placeholder="Quantity" />
                         <div class="col-sm-12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ErrorMessage="Enter Quantity" ForeColor="red" ValidationGroup="addPurchase" ControlToValidate="Quantity" runat="server" />
                    </div>
                        </div>
                    <!-- input-group -->
                </div>
                <!-- col-4 -->
              </div>
           <div class="row">

                 <div class="col-md-4">
                 <div class="form-group mg-b-10-force">
                    <asp:DropDownList runat="server"   CssClass ="form-control"  ID="ddlGSTType">    
                        <asp:ListItem Text="Choose GST Type" />
                         <asp:ListItem Text="CGST" />
                        <asp:ListItem Text="SGST" />
                        <asp:ListItem Text="IGST" />
                       </asp:DropDownList>
                    </div>
                </div><!-- col-4 -->
            
             <div class="col-lg-4 mg-b-10">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fa fa-sliders tx-20 lh-0 op-6"></i></span>
                        </div>
                        <asp:TextBox ID="GSTPercentage" runat="server" CssClass="form-control" placeholder="GST % " />
                        <div class="col-sm-12">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ErrorMessage="Enter GST%"  ForeColor="red" ValidationGroup="addPurchase" ControlToValidate="GSTPercentage" runat="server" />
                    </div>
                        </div>
                    <!-- input-group -->
                </div>

                <div class="col-lg-4  mg-b-10">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fa fa-calculator tx-20 lh-0 op-6"></i></span>
                        </div>
                        <asp:TextBox ID="Total" runat="server" CssClass="form-control" placeholder=" Total " />
                         <div class="col-sm-12">
                        <asp:RequiredFieldValidator ErrorMessage="Enter Total"  ForeColor="red" ValidationGroup="addPurchase" ControlToValidate="Total" runat="server" />
                    </div>
                        </div>
                    <!-- input-group -->
                </div>
              <!-- col-4 -->
               </div>
           <hr/>
           <div class="row">
               <div class="col-lg-4   mg-b-10">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fa fa-truck tx-20 lh-0 op-6"></i></span>
                        </div>
                        <asp:TextBox ID="Transport" runat="server" CssClass="form-control" placeholder="Transport" />
                         <div class="col-sm-12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ErrorMessage="Enter Transport"  ForeColor="red" ValidationGroup="addPurchase" ControlToValidate="Transport" runat="server" />
                         </div>
                        </div>
                    <!-- input-group -->
                </div>
              <!-- col-4 -->

               <div class="col-lg-4 mg-b-10">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fa fa-tag tx-20 lh-0 op-6"></i></span>
                        </div>
                        <asp:TextBox ID="Discount" runat="server" CssClass="form-control" OnTextChanged="Discount_TextChanged" AutoPostBack="true" placeholder="Discount" />
                         <div class="col-sm-12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ErrorMessage="Enter Discount" ForeColor="red" ValidationGroup="addPurchase" ControlToValidate="Discount" runat="server" />
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
                        <asp:TextBox ID="TotalAmount" runat="server" CssClass="form-control" placeholder="Total Amount" />
                        <div class="col-sm-12">
                         <asp:RequiredFieldValidator ErrorMessage="Enter Total Amount" ForeColor="red" ValidationGroup="addPurchase" ControlToValidate="TotalAmount" runat="server" />
                         </div>
                        </div>
                    <!-- input-group -->
                </div>

                      
                  <div class="col-lg-4 mg-b-10">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fa fa-rupee tx-20 lh-0 op-6"></i></span>
                        </div>
                        <asp:TextBox ID="RupeesInWord" runat="server" CssClass="form-control" placeholder="Rupees In Word" />
                         <div class="col-sm-12">
                        <asp:RequiredFieldValidator ErrorMessage="Rupees in Word" ForeColor="red" ValidationGroup="addPurchase" ControlToValidate="RupeesInWord" runat="server" />
                    </div>
                        </div>
                    <!-- input-group -->
                </div>
              <!-- col-4 -->

             
               <div class="col-md-4">
                 <div class="form-group mg-b-10-force">
                    <asp:DropDownList runat="server"   CssClass ="form-control"  ID="PaymentMethod">    
                        <asp:ListItem Text="Choose Payment Method" />
                         <asp:ListItem Text="Cash" />
                        <asp:ListItem Text="Creditcard" />
                        <asp:ListItem Text="Debitcard" />
                       </asp:DropDownList>
                    </div>
                </div><!-- col-4 -->
             </div>
   
               <div class="container form-layout-footer pd-y-30 tx-center">
                <asp:Button Text="Add" ID="Button1" runat="server" CssClass="btn btn-primary bd-0"  ValidationGroup="addPurchase" OnClick="Button1_Click"/>
               </div>
                  <div>
                       </div>
                <!-- form-layout-footer -->
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
        </div>
        <div class="slim-footer mg-t-0">
            <div class="container-fluid">
                 <p>Copyright 2019 &copy; All Right Reserved.Universal GST Billing System </p>          
                   <%--   <p>Designed by: <a href="">xyz</a></p>--%>
           </div>
        </div>
     <%--       </div>
            <!-- container-fluid -->
        </div>
        <!-- slim-footer -->
   --%>
          

</asp:Content>
