using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public class QueryProcessor
    {

        public string CheckLogin = "select * from tblLogin where UserName = @UserName and Password = @Password";

        public string InsertCategory = "insert into tblCategory(CategoryName,IsActive) values(@CategoryName,1)";
        public string GetCategory = "select * from tblCategory where isactive=1";

        public string InsertBrand = "insert into tblBrand(BrandName,CategoryId,IsActive) values(@BrandName,@CategoryId,1)";
        public string GetBrand = "select b.BrandId,b.BrandName,b.IsActive,c.CategoryId,c.CategoryName from tblBrand b join tblCategory c on b.CategoryId=c.CategoryId where b.isactive=1";


        public string InsertProduct = "insert into tbl_Product( Product, ProductShortCode, BrandId, CategoryId, SaleRate, PurchaseRate, HSN, GST, Discription, isInventory, IsActive, StockQuantity, BarCode) values(@Product, @ProductShortCode, @BrandId, @CategoryId, @SaleRate, @PurchaseRate, @HSN, @GST, @Discription, @isInventory, 1, @StockQuantity, @BarCode)";
        public string GetProduct = "select * from tbl_Product where isactive=1";
        public string ShowProductTable = "SELECT * FROM tbl_product p join tblbrand b on p.brandid=b.brandid join tblcategory c on p.categoryid=c.categoryid  where p.isactive=1";


        public string InsertVendor = "insert into tblVendor(CompanyName,VendorName,MobileNo,Address,EmailId,VendorGSTNo,BankAccountNo,BankName,Branch,IFSCCode, panCard,AadharCard,IsActive) values(@CompanyName,@VendorName,@MobileNo,@Address,@EmailId,@VendorGSTNo,@BankAccountNo,@BankName,@Branch,@IFSCCode,@panCard,@AadharCard,1)";
        public string GetVendor = "select * from tblVendor where isactive=1";


        public string InsertCustomer = "insert into tblCustomer(CustomerName,MobileNo,Address,EmailId,CustomerGSTNo,IsActive) values(@CustomerName,@MobileNo,@Address,@EmailId,@CustomerGSTNo,1)";
        public string GetCustomer = "select * from tblCustomer where isactive=1";


        public string InsertSale = "insert into tblSale(BillNo,Date,CustomerName,MobileNo,EmailId,GSTNo,Address,Price,Quantity,GSTType,GSTPercentage,Total,PlaceToSupply,Transport,OtherCharges,RoundOff,TotalAmount,Discount,RupeesInWord,Paymentmtd) Values(@BillNo,@Date,@CustomerName,@MobileNo,@EmailId,@GSTNo,@Address,@Price,@Quantity,@GSTType,@GSTPercentage,@Total,@PlaceToSupply,@Transport,@OtherCharges,@RoundOff,@TotalAmount,@Discount,@RupeesInWord,@Paymentmtd);select last_insert_id();";
        public string GetSale = "Select *from tblSale";

        //For inserting the sale outwards **pst-01-03-2019**
        public string insertSaleOutwards = "insert into tblSaleOutwards(saleId,productId,isActive, qnty) values(@saleId,@productId,@isActive,@qnty)";
        public string getProductsBySaleId = "SELECT slo.saleId,p.productId,p.product,p.productShortCode,p.BrandId,p.categoryId,p.Salerate,p.purchaserate,p.HSN,p.GST,p.discription,p.stockQuantity FROM tblsaleoutwards slo join tbl_product p on slo.productId=p.productId where slo.saleId=@saleId";

        public string InsertPurchase = "insert into tblPurchase(PurchaseBillNo,PurchaseDate,VendorName,MobileNo,EmailId,GSTNo,CompanyName,Product,Price,Quantity,GSTType,GSTPercentage,Total,Transport,TotalAmount,Discount,RupeesInWord,PaymentMethod) values(@PurchaseBillNo,@PurchaseDate,@VendorName,@MobileNo,@EmailId,@GSTNo,@CompanyName,@Product,@Price,@Quantity,@GSTType,@GSTPercentage,@Total,@Transport,@TotalAmount,@Discount,@RupeesInWord,@PaymentMethod)";
        public string GetPurchase = "select * from tblPurchase";


        public string DeleteCategory = "update tblcategory set isactive=0 where categoryid=@CategoryId";

        public string DeleteBrand = "update tblbrand set isactive=0 where brandid=@BrandId";

        public string DeleteProduct = "update tbl_Product set isactive=0 where Productid=@ProductId";

        public string DeleteCustomer = "update tblCustomer set isactive=0 where CustomerId=@CustomerId";

        public string GetBrandForDropdown = "select * from tblbrand where categoryid=@CategoryId and isactive=1";

        public string DeleteVendor = "update tblVendor set isactive=0 where VendorId=@VendorId";
        public string UpdateVendor = "update tblVendor set isactive=0 where VendorId=@VendorId";

        public string ValidateCategory = "SELECT * FROM tblcategory where CategoryName=@CategoryName ";

        public string ValidateBrand = "SELECT * FROM tblbrand where CategoryId=@CategoryId and BrandName=@BrandName and isactive=1 ";

        //public string ValidateBrand = "select * from tblbrand join tblcategory on tblbrand.CategoryId=tblcategory.CategoryId where tblbrand.BrandName=@BrandName and tblcategory.CategoryName=@CategoryName";
        public string ValidateProduct = "SELECT * FROM tbl_Product where ProductName=@ProductName ";
        public string ValidateCustomer = "SELECT * FROM tblCustomer where MobileNo=@MobileNo ";
        public string ValidateVendor = "SELECT * FROM tblVendor where AadharCard=@AadharCard ";
        public string ValidatePurchase = "SELECT * FROM tblPurchase where MobileNo=@MobileNo ";
        public string ValidateSale = "SELECT * FROM tblSale where MobileNo=@MobileNo ";


        public string GetCustomerByName = " select * from tblCustomer where isactive=1 and CustomerName=@CustomerName";
        public string GetVendorByName = " select * from tblVendor where isactive=1 and VendorName=@VendorName";
        public string GetProductByName = " select * from tbl_Product where isactive=1 and ProductId=@Product";

        public string GetSaleReport = "select objSale.saleid,sum( ( (salerate * qnty) * (100 + GST) /100 )) as totalSaleAmount,billno,date,customername,mobileno" +
                                        " from tblsale objSale inner join tblsaleoutwards objOutward"+
                                        " on objSale.saleid = objOutward.saleid"+
                                        " inner join tbl_product objProduct"+
                                        " on objOutward.productId = objProduct.productId"+
                                        " group by objSale.saleid";

    }


}

