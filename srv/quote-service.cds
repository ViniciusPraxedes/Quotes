using schema from '../db/schema';

service QuotesService {
    entity Quotations as projection on schema.Quotations;
    entity QuoteStatus as projection on schema.QuoteStatus;
    entity QuoteDeliveryType as projection on schema.QuoteDeliveryType;
    entity QuoteDeliveryTime as projection on schema.QuoteDeliveryTime;
    entity QuotationItems as projection on schema.QuotationItems;
    entity QuotationItemDetails as projection on schema.QuotationItemDetails;
}
//annotate QuotesService.Quotations with @odata.draft.enabled; 