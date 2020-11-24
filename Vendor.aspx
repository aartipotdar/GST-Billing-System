<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Vendor.aspx.cs" Inherits="GSTBillingSystem.Vendor1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
          <div class="slim-pageheader">
            <ol class="breadcrumb slim-breadcrumb">
               <li class="breadcrumb-item active" aria-current="page"></li>
            </ol>
               <h6 class="slim-pagetitle">Add Vendor</h6>
           </div><!-- slim-pageheader -->

    <div class="section-wrapper">
       <div class="form-layout">
          <h4>Personal Details</h4>
              <hr/>
                 <div class="row mg-b-25">
              <hr/>

      <div class="col-sm-4  mg-b-10">
         <div class="input-group">
          <div class="input-group-prepend"> 
            <span class="input-group-text"><i class="fa fa-building tx-20  lh-0  op-6"></i></span>
          </div>
            <asp:TextBox ID="CompanyName" runat="server" CssClass="form-control" placeholder=" Enter Company Name"></asp:TextBox><br/>
            <div class="col-sm-12">
             <asp:RequiredFieldValidator ErrorMessage="Enter Company Name" ForeColor="Red" ValidationGroup="addVendor" ControlToValidate="CompanyName" runat="server" />
        </div>
             </div>
     </div><!-- col-8 -->


     <div class="col-lg-4 mg-b-10">
         <div class="input-group">
         <div class="input-group-prepend">
           <span class="input-group-text"><i class="icon ion-person tx-20  lh-0  op-6"></i></span>
         </div>
           <asp:TextBox ID="VendorName" runat="server" CssClass="form-control" placeholder="Enter Vendor Name"></asp:TextBox><br/>
           <div class="col-sm-12">
             <asp:RequiredFieldValidator ErrorMessage="Enter Vendor Name" ForeColor="Red" ValidationGroup="addVendor" ControlToValidate="VendorName" runat="server" />
        </div>
             </div>
     </div><!-- col-4 -->


     <div class="col-lg-4 mg-b-10">
        <div class="input-group">
        <div class="input-group-prepend">
            <span class="input-group-text"><i class="fa fa-phone tx-20  lh-0  op-6"></i></span>
        </div>
          <asp:TextBox ID="MobileNo" runat="server" CssClass="form-control" MaxLength="10" placeholder="Enter Mobile No"></asp:TextBox><br/>
         <div class="col-sm-12">
              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ErrorMessage="Enter Mobile No" ForeColor="Red" ValidationGroup="addCustomer" ValidationExpression="^[7-9]\d{9}$" ControlToValidate="MobileNo" runat="server" />

        </div>
            </div>
    </div><!-- col-4 -->


     <div class="col-lg-4 mg-b-10">
        <div class="input-group">
        <div class="input-group-prepend"> 
            <span class="input-group-text"><i class="fa fa-home tx-20  lh-0  op-6"></i></span>
        </div>
          <asp:TextBox ID="Address" runat="server" CssClass="form-control" placeholder="Enter Address" ></asp:TextBox><br/>
            <div class="col-sm-12"> 
             <asp:RequiredFieldValidator ErrorMessage="Enter Address" ForeColor="Red" ValidationGroup="addVendor" TextMode="MultiLine" Rows="10"  ControlToValidate="Address" runat="server" />
         </div>
            </div>
      </div><!-- col-4 -->


      <div class="col-lg-4 mg-b-10">
          <div class="input-group">
          <div class="input-group-prepend"> 
               <span class="input-group-text"><i class="fa fa-envelope tx-20 lh-0 op-6"></i></span> 
          </div>
             <asp:TextBox ID="EmailId" runat="server" CssClass="form-control" placeholder="Enter EmailId"></asp:TextBox><br/>
             <div class="col-sm-12">
                 <asp:RequiredFieldValidator ErrorMessage="Enter EmailId" ForeColor="Red" ControlToValidate="EmailId" ValidationGroup="addVendor" runat="server" />
             </div>
              </div>
      </div><!-- col-4 -->


      <div class="col-lg-4 mg-b-10">
           <div class="input-group">
           <div class="input-group-prepend"> 
               <span class="input-group-text"><i class="fa fa-book tx-20 lh-0  op-6"></i></span>
           </div>
           <asp:TextBox ID="VendorGSTNo" runat="server" CssClass="form-control"  placeholder="Vendor GST No"></asp:TextBox><br/>
               <div class="col-sm-12">
               <asp:RequiredFieldValidator ErrorMessage="Enter GST No" ForeColor="Red"  ValidationGroup="addVendor" ControlToValidate="VendorGSTNo" runat="server" />
           </div>
               </div>
      </div><!-- col-4 -->
                   

      <div class="col-lg-4 mg-b-10">
           <div class="input-group">
           <div class="input-group-prepend"> 
                <span class="input-group-text"><i class="fa fa-credit-card tx-20 lh-0  op-6"></i></span>
                </div>
                <asp:TextBox ID="PanCard" runat="server" CssClass="form-control" placeholder="Pancard No"></asp:TextBox><br/>
               <div class="col-sm-12">
               <asp:RequiredFieldValidator ErrorMessage="Enter pancard No" ForeColor="Red" ValidationGroup="addVendor"  ControlToValidate="PanCard" runat="server" />
           </div>
               </div>
      </div><!-- col-4 -->


      <div class="col-lg-4 mg-b-10">
           <div class="input-group">
           <div class="input-group-prepend"> 
                <span class="input-group-text"><i class="fa fa-credit-card tx-20  lh-0  op-6"></i></span>
                </div>
                 <asp:TextBox ID="AadharCard" runat="server" CssClass="form-control" placeholder="AdharCard No"></asp:TextBox><br/>
              <div class="col-sm-12">
                <asp:RequiredFieldValidator ErrorMessage="Enter Aadharcard No" ForeColor="Red" ValidationGroup="addVendor" ControlToValidate="AadharCard" runat="server" />
           </div>
               </div>
      </div><!-- col-4 -->

   </div>

                <h4>Bank Details</h4>
                <hr/>

           <div class="row mg-b-25">

               <div class="col-lg-4 mg-b-10">
                    <div class="input-group">
                       <div class="input-group-prepend"> 
                    <span class="input-group-text"><i class="fa fa-university tx-20  lh-0  op-6"></i></span>
                       </div>
                    <asp:TextBox ID="BankName" runat="server" CssClass="form-control" placeholder="Enter BankName"></asp:TextBox><br/>
                        <div class="col-sm-12">
                        <asp:RequiredFieldValidator ErrorMessage=" Enter BankName" ForeColor="Red" ValidationGroup="addVendor"  ControlToValidate="BankName" runat="server" />
                    </div>
                        </div>
               </div><!-- col-4 -->

                 <div class="col-lg-4 mg-b-10">
                      <div class="input-group">
                         <div class="input-group-prepend"> 
                           <span class="input-group-text"><i class="fa fa-university tx-20  lh-0  op-6"></i></span>
                         </div>
                    <asp:TextBox ID="Branch" runat="server" CssClass="form-control" placeholder="Enter Branch Name"></asp:TextBox><br/>
                          <div class="col-sm-12">
                          <asp:RequiredFieldValidator ErrorMessage="Enter Branch Name" ForeColor="Red" ValidationGroup="addVendor"  ControlToValidate="Branch" runat="server" />
                           </div>
                          </div>
                  </div><!-- col-4 -->
               

                  
                </div>

               <div class="row mg-b-25">
                  
                  <div class="col-lg-4 mg-b-10">
                    <div class="input-group">
                      <div class="input-group-prepend"> 
                        <span class="input-group-text"><i class="fa fa-university tx-20  lh-0  op-6"></i></span>
                      </div>
                   <asp:TextBox ID="BankAccountNo" runat="server" CssClass="form-control"  placeholder="Bank Account No"></asp:TextBox><br/>
                       <div class="col-sm-12">
                         <asp:RequiredFieldValidator ErrorMessage="Enter Bank Account No" ValidationGroup="addVendor" ForeColor="Red"  ControlToValidate="BankAccountNo" runat="server" />
                    </div>
                        </div>
                  </div><!-- col-4 -->

               <div class="col-lg-4 mg-b-10">
                  <div class="input-group">
                    <div class="input-group-prepend"> 
                       <span class="input-group-text"><i class="fa fa-university tx-20  lh-0  op-6"></i></span>
                    </div>

                   <asp:TextBox ID="IFSCCode" runat="server" CssClass="form-control" placeholder="Enter IFSCCode"></asp:TextBox><br/>
                      <div class="col-sm-12">
                      <asp:RequiredFieldValidator ErrorMessage="IFSCCode" ForeColor="Red" ValidationGroup="addVendor" ControlToValidate="IFSCCode" runat="server" />
                  </div>
                      </div>
              </div><!-- col-4 -->

            </div><!-- row -->

              <div class="form-layout-footer pd-y-30 tx-center">
           
                  <asp:Button Text="Save" runat="server" ID="btn1" CssClass="btn btn-primary bd-0" ValidationGroup="addVendor" OnClick="Button1_Click1" />
                   <div style="margin-top:10px">
                     
                       <div class="table-wrapper">
                    <asp:GridView runat="server" ID="gd" DataKeyNames="VendorId" CssClass="table table-bordered table-striped display responsive nowrap" AutoGenerateColumns="false" OnRowEditing="gd_RowEditing" OnRowDeleting="gd_RowDeleting">
                        <Columns>
                        <asp:TemplateField HeaderText="Sr. No.">
                                <ItemTemplate>
                                    <asp:Label Text='<%# Eval("VendorId") %>' runat="server" Visible="false" />
                                    <asp:Label ID="Label1" Text='<%# Container.DataItemIndex+1%>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Company Name">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" Text='<%# Eval("CompanyName") %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Vendor Name">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" Text='<%# Eval("VendorName") %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>

                        <asp:TemplateField HeaderText="mobile No">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" Text='<%# Eval("MobileNo") %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>

                       
                        
                        <asp:TemplateField HeaderText="Vendor GST No">
                                <ItemTemplate>
                                    <asp:Label ID="Label7" Text='<%# Eval("VendorGSTNo") %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>

                       

                            <asp:TemplateField HeaderText="Delete">
                                <ItemTemplate>
                                    <asp:Button Text="Delete" runat="server" ID="btn_DeleteVendor" CssClass="btn btn-danger bd-0" CommandName="Delete" />
                                </ItemTemplate>
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="Edit">
                                <ItemTemplate>
                                    <asp:Button Text="Edit" runat="server" ID="btn_EditVendor" CssClass="btn btn-danger bd-0" CommandName="Edit" />
                                </ItemTemplate>
                            </asp:TemplateField>

                             
                    </Columns>
                    </asp:GridView>
                 </div>
                </div>
              </div>
           
       </div><%--layout--%>        
         </div><!-- section-wrapper -->
  
          <div class="slim-footer mg-t-0">
            <div class="container-fluid">
                <p>Copyright 2019 &copy; All Right Reserved.Universal GST Billing System </p>
               <%--<p>Designed by: <a href="">xyz</a></p>--%>
           </div>
        </div>
    
   
            </div><!-- container -->

</asp:Content>
