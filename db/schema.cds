namespace schema;

@OData.publish: true
entity Quotations {
    key QUOTEHEADERID : Integer not null @odata.Type:'Edm.String' @(Common : { Label : 'Quote Header ID' });
    QUOTESTATUSID     : Integer not null @(Common : { Label : 'Quote Status ID' });
    CUSTOMERID        : Integer not null @(Common : { Label : 'Customer ID' });
    CUSTOMERNAME      : String(40) not null @(Common : { Label : 'Customer Name' });
    ADDRESS           : String(50) not null @(Common : { Label : 'Address' });
    POSTALCODE        : String(10) not null @(Common : { Label : 'Postal Code' });
    CITY              : String(35) not null @(Common : { Label : 'City' });
    COUNTRY           : String(2) not null @(Common : { Label : 'Country' });
    PHONE             : String(16) not null @(Common : { Label : 'Phone' });
    EMAIL             : String(50) not null @(Common : { Label : 'Email' });
    
    DESCRIPTION : String(120) not null @(Common : { Label : 'Description' });
    
    SHOWMARGIN           : hana.TINYINT not null @(Common : { Label : 'Show Margin' });
    VALIDTO              : Date not null @(Common : { Label : 'Valid To' });
    QUOTEDELIVERYTYPEID  : Integer not null @(Common : { Label : 'Quote Delivery Type ID' });
    TOTALAMOUNT          : Decimal(13, 2) @(Common : { Label : 'Total Amount' });
    BYDLEADID            : Integer @(Common : { Label : 'BYD Lead ID' });
    BYDQUOTATIONID       : Integer @odata.Type:'Edm.String' @(Common : { Label : 'BYD Quotation ID' });
    BYDSALESORDERID      : Integer @(Common : { Label : 'BYD Sales Order ID' });
    EMPLOYEERESPID       : Integer not null @(Common : { Label : 'Employee Responsible ID' });
    EMPLOYEERESPNAME     : String(40) not null @(Common : { Label : 'Employee Responsible Name' });
    EMPLOYEEORGUNIT      : Integer not null @odata.Type:'Edm.String' @(Common : { Label : 'Employee Org Unit' });
    TOTALAMOUNTCURRENCY  : String(3) @(Common : { Label : 'Total Amount Currency' });
    QUOTEDELIVERYTIMEID  : Integer @(Common : { Label : 'Quote Delivery Time ID' });
    QUOTEACCESSORIESINCLUDEDID : Integer @(Common : { Label : 'Quote Accessories Included ID' });
    DISCOUNTAMOUNT       : Decimal(13, 2) @(Common : { Label : 'Discount Amount' });
    DISCOUNTCURRENCY     : String(3) @(Common : { Label : 'Discount Currency' });
    EMAILTEXT            : String(500) @(Common : { Label : 'Email Text' });
    INTERNALCOMMENT      : String(500) @(Common : { Label : 'Internal Comment' });
    CUSTOMERINFO         : String(500) @(Common : { Label : 'Customer Info' });
    CAMPAIGNID           : Integer @(Common : { Label : 'Campaign ID' });
    CONTACTID            : Integer @(Common : { Label : 'Contact ID' });
    CONTACTNAME          : String(40) @(Common : { Label : 'Contact Name' });
    QuotationItems       : Composition of many QuotationItems on QuotationItems.QUOTEHEADERID = QUOTEHEADERID @(Common : { Label : 'Quotation Items' });
    QuoteStatus          : Association to QuoteStatus on QuoteStatus.QUOTESTATUSID = QUOTESTATUSID @(Common : { Label : 'Quote Status' });
    QuoteDeliveryType    : Association to QuoteDeliveryType on QuoteDeliveryType.QUOTEDELIVERYTYPEID = QUOTEDELIVERYTYPEID @(Common : { Label : 'Quote Delivery Type' });
    QuoteDeliveryTime    : Association to QuoteDeliveryTime on QuoteDeliveryTime.QUOTEDELIVERYTIMEID = QUOTEDELIVERYTIMEID @(Common : { Label : 'Quote Delivery Time' });
};

entity QuoteDeliveryTime {
    key QUOTEDELIVERYTIMEID : Integer @(Common : { Label : 'Quote Delivery Time ID' });
    WEEKS                   : String(50) not null @(Common : { Label : 'Weeks' });
}

entity QuoteStatus {
    key QUOTESTATUSID : Integer @(Common : { Label : 'Quote Status ID' });
    STATUS            : String(50) not null @(Common : { Label : 'Status' });
    CRITICALITY       : Integer @(Common : { Label : 'Criticality' });
};

entity QuoteDeliveryType {
    key QUOTEDELIVERYTYPEID : Integer not null @(Common : { Label : 'Quote Delivery Type ID' });
    NAME                    : String(40) not null @(Common : { Label : 'Name' });
};

entity QuotationItems {
    key QUOTEHEADERID     : Integer not null @(Common : { Label : 'Quote Header ID' });
    key QUOTEITEMID       : Integer not null @(Common : { Label : 'Quote Item ID' });
    PRICETYPEID           : Integer @(Common : { Label : 'Price Type ID' });
    PRODUCTID             : Integer not null @(Common : { Label : 'Product ID' });
    PRODUCTDESCRIPTION    : String(40) not null @(Common : { Label : 'Product Description' });
    FABRICID              : Integer @(Common : { Label : 'Fabric ID' });
    FABRICTITLE           : String(120) @(Common : { Label : 'Fabric Title' });
    FABRICSUPPLIERTITLE   : String(120) @(Common : { Label : 'Fabric Supplier Title' });
    QUANTITY              : Integer not null @(Common : { Label : 'Quantity' });
    UNIT                  : String(3) @(Common : { Label : 'Unit' });
    WIDTH                 : Decimal(13, 2) @(Common : { Label : 'Width' });
    HEIGHT                : Decimal(13, 2) @(Common : { Label : 'Height' });
    PRICE                 : Decimal(13, 2) not null @(Common : { Label : 'Price' });
    CUSTOMERPRICE         : Decimal(13, 2) @(Common : { Label : 'Customer Price' });
    SUPPLIERPRICE         : Decimal(13, 2) @(Common : { Label : 'Supplier Price' });
    SUPPLIERCURRENCY      : String(3) @(Common : { Label : 'Supplier Currency' });
    SUPPLIERTOTALAMOUNT   : Decimal(13, 2) @(Common : { Label : 'Supplier Total Amount' });
    TOTALAMOUNT           : Decimal(13, 2) @(Common : { Label : 'Total Amount' });
    CURRENCY              : String(3) not null @(Common : { Label : 'Currency' });
    CUSTOMERINFO          : String(500) @(Common : { Label : 'Customer Info' });
    VENDORINFO            : String(500) @(Common : { Label : 'Vendor Info' });
    GOODSLABEL            : String(120) @(Common : { Label : 'Goods Label' });
    DISCOUNTAMOUNT        : Decimal(13, 2) @(Common : { Label : 'Discount Amount' });
    DISCOUNTCURRENCY      : String(3) @(Common : { Label : 'Discount Currency' });
    QuotationItemDetails  : Composition of many QuotationItemDetails on QuotationItemDetails.QUOTEITEMID = QUOTEITEMID and QuotationItemDetails.QUOTEHEADERID = QUOTEHEADERID @(Common : { Label : 'Quotation Item Details' });
    Quotation             : Association to Quotations on Quotation.QUOTEHEADERID = QUOTEHEADERID @(Common : { Label : 'Quotation' });
};

entity QuotationItemDetails {
    key QUOTEHEADERID         : Integer not null @(Common : { Label : 'Quote Header ID' });
    key QUOTEITEMID           : Integer not null @(Common : { Label : 'Quote Item ID' });
    key QUOTEITEMDETAILSID    : Integer not null @(Common : { Label : 'Quote Item Details ID' });
    ADDITIONID                : Integer @(Common : { Label : 'Addition ID' });
    ADDITIONMANDATORY         : hana.TINYINT @(Common : { Label : 'Addition Mandatory' });
    ADDITIONDESCRIPTION       : String(120) @(Common : { Label : 'Addition Description' });
    ADDITIONSUPPLIERTITLE     : String(120) @(Common : { Label : 'Addition Supplier Title' });
    ADDITIONVALUEID           : Integer @(Common : { Label : 'Addition Value ID' });
    ADDITIONVALUEDESCRIPTION  : String(120) @(Common : { Label : 'Addition Value Description' });
    ADDITIONVALUESUPPLIERTITLE : String(120) @(Common : { Label : 'Addition Value Supplier Title' });
    QUANTITY                  : Integer @(Common : { Label : 'Quantity' });
    WIDTH                     : Decimal(20, 1) @(Common : { Label : 'Width' });
    HEIGHT                    : Decimal(20, 1) @(Common : { Label : 'Height' });
    PRICE                     : Decimal(13, 2) @(Common : { Label : 'Price' });
    CUSTOMERPRICE             : Decimal(13, 2) @(Common : { Label : 'Customer Price' });
    CURRENCY                  : String(3) @(Common : { Label : 'Currency' });
    SUPPLIERPRICE             : Decimal(13, 2) @(Common : { Label : 'Supplier Price' });
    SUPPLIERCURRENCY          : String(3) @(Common : { Label : 'Supplier Currency' });
    DISCOUNTAMOUNT            : Decimal(13, 2) @(Common : { Label : 'Discount Amount' });
    DISCOUNTCURRENCY          : String(3) @(Common : { Label : 'Discount Currency' });
    Quotation                 : Association to Quotations on Quotation.QUOTEHEADERID = QUOTEHEADERID @(Common : { Label : 'Quotation' });
    QuotationItem             : Association to QuotationItems on QuotationItem.QUOTEITEMID = QUOTEITEMID @(Common : { Label : 'Quotation Item' });
};
