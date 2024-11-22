using QuotesService as service from '/home/user/projects/stretch/srv/quote-service.cds';


// Annotations for Quotations
annotate service.Quotations with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            { $Type : 'UI.DataField', Label : 'Description', Value : DESCRIPTION },
            { $Type : 'UI.DataField', Label : 'Valid to', Value : VALIDTO },
            { $Type : 'UI.DataField', Label : 'Employee resp ID.', Value : EMPLOYEERESPID },
            { $Type : 'UI.DataField', Label : 'Address', Value : ADDRESS },
            { $Type : 'UI.DataField', Label : 'Campaign ID', Value : CAMPAIGNID },
            { $Type : 'UI.DataField', Label : 'City', Value : CITY },
            { $Type : 'UI.DataField', Label : 'Contact ID', Value : CONTACTID },
            { $Type : 'UI.DataField', Label : 'Contact Name', Value : CONTACTNAME},
            { $Type : 'UI.DataField', Label : 'Country', Value : COUNTRY },
            { $Type : 'UI.DataField', Label : 'Customer ID', Value : CUSTOMERID },
            { $Type : 'UI.DataField', Label : 'Customer Info', Value : CUSTOMERINFO },
            { $Type : 'UI.DataField', Label : 'Discount Amount', Value : DISCOUNTAMOUNT },
            { $Type : 'UI.DataField', Label : 'Discount Currency.', Value : DISCOUNTCURRENCY },
            { $Type : 'UI.DataField', Label : 'Email', Value : EMAIL },
            { $Type : 'UI.DataField', Label : 'Email Text.', Value : EMAILTEXT },
            { $Type : 'UI.DataField', Label : 'Employee Org.Unit', Value : EMPLOYEEORGUNIT },
            { $Type : 'UI.DataField', Label : 'Internal Comment', Value : INTERNALCOMMENT },
            { $Type : 'UI.DataField', Label : 'Phone', Value : PHONE },
            { $Type : 'UI.DataField', Label : 'Postal Code', Value : POSTALCODE },
            { $Type : 'UI.DataField', Label : 'Quote Acc.Incl.ID', Value : QUOTEACCESSORIESINCLUDEDID },
            { $Type : 'UI.DataField', Label : 'Quote Delivery Time', Value : QuoteDeliveryTime.WEEKS },
            { $Type : 'UI.DataField', Label : 'Show Margin', Value : SHOWMARGIN },
            { $Type : 'UI.DataField', Label : 'Total Amount Currency.', Value : TOTALAMOUNTCURRENCY },
            

            { $Type : 'UI.DataField', Label : 'Customer Name', Value : CUSTOMERNAME }
            
        ]

        
        
    },


    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneralInfoFacet',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        }
    ],

    UI.LineItem : [
        { $Type : 'UI.DataField', Label : 'ID', Value : QUOTEHEADERID },

        { $Type : 'UI.DataField', 
        Label : 'Status', 
        Value : QuoteStatus.STATUS, 
        Criticality : QuoteStatus.CRITICALITY,
        ![@UI.Importance] : #High
        
        },
        { $Type : 'UI.DataField', Label : 'Customer Name', Value : CUSTOMERNAME },
        { $Type : 'UI.DataField', Value : DESCRIPTION },
        { $Type : 'UI.DataField',  Value : QuoteDeliveryType.NAME },
        //{ $Type : 'UI.DataField', Label : 'Quote Delivery Time', Value : QuoteDeliveryTime.WEEKS },
        { $Type : 'UI.DataField', Label : 'Valid To', Value : VALIDTO },
        { $Type : 'UI.DataField', Label : 'Employee Resp. Name', Value : EMPLOYEERESPNAME, ![@UI.PartOfPreview]: true },
        { $Type : 'UI.DataField', Label : 'Total Amount', Value : TOTALAMOUNT },

        //{ $Type : 'UI.DataField', Label : 'Address', Value : ADDRESS },
        //{ $Type : 'UI.DataField', Label : 'Byd lead ID', Value : BYDLEADID },
        //{ $Type : 'UI.DataField', Label : 'Byd quotation ID', Value : BYDQUOTATIONID },
        //{ $Type : 'UI.DataField', Label : 'Byd sales order ID', Value : BYDSALESORDERID },
        //{ $Type : 'UI.DataField', Label : 'Campagin ID', Value : CAMPAIGNID },
        //{ $Type : 'UI.DataField', Label : 'City', Value : CITY },
        //{ $Type : 'UI.DataField', Label : 'Contact ID', Value : CONTACTID },
        //{ $Type : 'UI.DataField', Label : 'Contact name', Value : CONTACTNAME },
        //{ $Type : 'UI.DataField', Label : 'Country', Value : COUNTRY },
        //{ $Type : 'UI.DataField', Label : 'Customer ID', Value : CUSTOMERID },
        //{ $Type : 'UI.DataField', Label : 'Customer info', Value : CUSTOMERINFO },
        //{ $Type : 'UI.DataField', Label : 'Discount amount', Value : DISCOUNTAMOUNT },
        //{ $Type : 'UI.DataField', Label : 'Discount currencey', Value : DISCOUNTCURRENCY },
        //{ $Type : 'UI.DataField', Label : 'Email', Value : EMAIL },
        //{ $Type : 'UI.DataField', Label : 'Email text', Value : EMAILTEXT },


        //{ $Type : 'UI.DataField', Label : 'Employee org unit', Value : EMPLOYEEORGUNIT },
        //{ $Type : 'UI.DataField', Label : 'Employee resp id', Value : EMPLOYEERESPID },
        //{ $Type : 'UI.DataField', Label : 'Internal comment', Value : INTERNALCOMMENT },
        //{ $Type : 'UI.DataField', Label : 'Phone', Value : PHONE },
        //{ $Type : 'UI.DataField', Label : 'Postal code', Value : POSTALCODE },
        //{ $Type : 'UI.DataField', Label : 'Quote accessories included ID', Value : QUOTEACCESSORIESINCLUDEDID },
        //{ $Type : 'UI.DataField', Label : 'Quote delivery time ID', Value : QUOTEDELIVERYTIMEID },
        //{ $Type : 'UI.DataField', Label : 'Quote delivery type ID', Value : QUOTEDELIVERYTYPEID },


        //{ $Type : 'UI.DataField', Label : 'Quote status ID', Value : QUOTESTATUSID },

        

        //{ $Type : 'UI.DataField', Label : 'Show margin', Value : SHOWMARGIN },
        //{ $Type : 'UI.DataField', Label : 'Total amount currencry', Value : TOTALAMOUNTCURRENCY },


    
        
    ],


);





// Annotations for QuoteStatus
annotate service.QuoteStatus with @(
    UI.LineItem : [
        { $Type : 'UI.DataField', Label : 'Status ID', Value : QUOTESTATUSID },
        { $Type : 'UI.DataField', Label : 'Status Description', Value : STATUS }
    ]
);

// Annotations for QuoteDeliveryType
annotate service.QuoteDeliveryTime with @(
    UI.LineItem : [
        { $Type : 'UI.DataField', Label : 'Delivery Time ID', Value : QUOTEDELIVERYTIMEID },
        { $Type : 'UI.DataField', Label : 'Delivery Time', Value : WEEKS }
    ]
);







// Annotations for QuoteDeliveryType
annotate service.QuoteDeliveryType with @(
    UI.LineItem : [
        { $Type : 'UI.DataField', Label : 'Delivery Type ID', Value : QUOTEDELIVERYTYPEID },
        { $Type : 'UI.DataField', Label : 'Delivery Type Name', Value : NAME }
    ]
);


// Annotations for QuotationItems
annotate service.QuotationItems with @(
    UI.LineItem : [
        { $Type : 'UI.DataField', Label : 'Quote ID', Value : QUOTEHEADERID },
        //{ $Type : 'UI.DataField', Label : 'Price Type ID', Value : PRICETYPEID },
        //{ $Type : 'UI.DataField', Label : 'Fabric ID', Value : FABRICID },
        { $Type : 'UI.DataField', Label : 'Material', Value : FABRICTITLE },
        //{ $Type : 'UI.DataField', Label : 'Fabric Supplier', Value : FABRICSUPPLIERTITLE },
        //{ $Type : 'UI.DataField', Label : 'Unit', Value : UNIT },
        { $Type : 'UI.DataField', Label : 'Width', Value : WIDTH },
        { $Type : 'UI.DataField', Label : 'Height / Projection', Value : HEIGHT },
        { $Type : 'UI.DataField', Label : 'Customer Price', Value : CUSTOMERPRICE },
        //{ $Type : 'UI.DataField', Label : 'Supplier Price', Value : SUPPLIERPRICE },
        //{ $Type : 'UI.DataField', Label : 'Supplier Currency', Value : SUPPLIERCURRENCY },
        //{ $Type : 'UI.DataField', Label : 'Supplier Total Amount', Value : SUPPLIERTOTALAMOUNT },
        { $Type : 'UI.DataField', Label : 'Amount', Value : TOTALAMOUNT },
        //{ $Type : 'UI.DataField', Label : 'Currency', Value : CURRENCY },
        //{ $Type : 'UI.DataField', Label : 'Customer Info', Value : CUSTOMERINFO },
        //{ $Type : 'UI.DataField', Label : 'Vendor Info', Value : VENDORINFO },
        //{ $Type : 'UI.DataField', Label : 'Goods Label', Value : GOODSLABEL },
        { $Type : 'UI.DataField', Label : 'Discount Amount', Value : DISCOUNTAMOUNT },
        //{ $Type : 'UI.DataField', Label : 'Discount Currency', Value : DISCOUNTCURRENCY },
        //{ $Type : 'UI.DataField', Label : 'Quote item ID', Value : QUOTEITEMID },
        { $Type : 'UI.DataField', Label : 'Product description', Value : PRODUCTDESCRIPTION },
        { $Type : 'UI.DataField', Label : 'Quantity', Value : QUANTITY },
        //{ $Type : 'UI.DataField', Label : 'Product ID', Value : PRODUCTID },
        //{ $Type : 'UI.DataField', Label : 'Price', Value : PRICE }
    ]
);



// Annotations for QuotationItemDetails
annotate service.QuotationItemDetails with @(
    UI.LineItem : [
        { $Type : 'UI.DataField', Label : 'Detail ID', Value : QUOTEITEMDETAILSID },
        { $Type : 'UI.DataField', Label : 'Addition Description', Value : ADDITIONDESCRIPTION },
        { $Type : 'UI.DataField', Label : 'Price', Value : PRICE },
        { $Type : 'UI.DataField', Label : 'Quantity', Value : QUANTITY },
    ]
);
