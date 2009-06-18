#require 'soap/mapping'
#require 'type_defs'

module MappingRegistry #:nodoc:
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsEBLBaseComponents = "urn:ebay:apis:eBLBaseComponents"
  NsXMLSchema = "http://www.w3.org/2001/XMLSchema"

  EncodedRegistry.register(
    :class => ErrorParameterType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ErrorParameterType"),
    :schema_element => [
      ["value", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Value")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ParamID") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => ErrorType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ErrorType"),
    :schema_element => [
      ["shortMessage", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "ShortMessage")], [0, 1]],
      ["longMessage", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "LongMessage")], [0, 1]],
      ["errorCode", ["SOAP::SOAPToken", XSD::QName.new(NsEBLBaseComponents, "ErrorCode")], [0, 1]],
      ["userDisplayHint", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "UserDisplayHint")], [0, 1]],
      ["severityCode", ["SeverityCodeType", XSD::QName.new(NsEBLBaseComponents, "SeverityCode")], [0, 1]],
      ["errorParameters", ["ErrorParameterType[]", XSD::QName.new(NsEBLBaseComponents, "ErrorParameters")], [0, nil]],
      ["errorClassification", ["ErrorClassificationCodeType", XSD::QName.new(NsEBLBaseComponents, "ErrorClassification")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => AddressType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "AddressType"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Name")], [0, 1]],
      ["street", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Street")], [0, 1]],
      ["street1", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Street1")], [0, 1]],
      ["street2", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Street2")], [0, 1]],
      ["cityName", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CityName")], [0, 1]],
      ["county", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "County")], [0, 1]],
      ["stateOrProvince", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "StateOrProvince")], [0, 1]],
      ["countryName", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CountryName")], [0, 1]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Phone")], [0, 1]],
      ["phoneCountryPrefix", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "PhoneCountryPrefix")], [0, 1]],
      ["phoneAreaOrCityCode", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "PhoneAreaOrCityCode")], [0, 1]],
      ["phoneLocalNumber", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "PhoneLocalNumber")], [0, 1]],
      ["phone2CountryPrefix", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Phone2CountryPrefix")], [0, 1]],
      ["phone2AreaOrCityCode", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Phone2AreaOrCityCode")], [0, 1]],
      ["phone2LocalNumber", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Phone2LocalNumber")], [0, 1]],
      ["postalCode", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "PostalCode")], [0, 1]],
      ["addressID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "AddressID")], [0, 1]],
      ["externalAddressID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "ExternalAddressID")], [0, 1]],
      ["internationalName", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "InternationalName")], [0, 1]],
      ["internationalStateAndCity", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "InternationalStateAndCity")], [0, 1]],
      ["internationalStreet", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "InternationalStreet")], [0, 1]],
      ["companyName", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CompanyName")], [0, 1]],
      ["firstName", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "FirstName")], [0, 1]],
      ["lastName", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "LastName")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => AmountType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "AmountType"),
    :schema_attribute => {
      XSD::QName.new(nil, "currencyID") => "SOAP::SOAPToken"
    }
  )

  EncodedRegistry.register(
    :class => AverageRatingDetailsType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "AverageRatingDetailsType"),
    :schema_element => [
      ["ratingDetail", ["FeedbackRatingDetailCodeType", XSD::QName.new(NsEBLBaseComponents, "RatingDetail")], [0, 1]],
      ["rating", ["SOAP::SOAPDouble", XSD::QName.new(NsEBLBaseComponents, "Rating")], [0, 1]],
      ["ratingCount", ["SOAP::SOAPLong", XSD::QName.new(NsEBLBaseComponents, "RatingCount")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => BusinessSellerDetailsType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "BusinessSellerDetailsType"),
    :schema_element => [
      ["address", ["AddressType", XSD::QName.new(NsEBLBaseComponents, "Address")], [0, 1]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Fax")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Email")], [0, 1]],
      ["additionalContactInformation", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "AdditionalContactInformation")], [0, 1]],
      ["tradeRegistrationNumber", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "TradeRegistrationNumber")], [0, 1]],
      ["legalInvoice", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "LegalInvoice")], [0, 1]],
      ["termsAndConditions", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "TermsAndConditions")], [0, 1]],
      ["vATDetails", ["VATDetailsType", XSD::QName.new(NsEBLBaseComponents, "VATDetails")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => BuyingGuideDetailsType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "BuyingGuideDetailsType"),
    :schema_element => [
      ["buyingGuide", ["BuyingGuideType[]", XSD::QName.new(NsEBLBaseComponents, "BuyingGuide")], [0, nil]],
      ["buyingGuideHub", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "BuyingGuideHub")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => BuyingGuideType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "BuyingGuideType"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Name")], [0, 1]],
      ["uRL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "URL")], [0, 1]],
      ["categoryID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryID")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Title")], [0, 1]],
      ["text", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Text")], [0, 1]],
      ["creationTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "CreationTime")], [0, 1]],
      ["userID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "UserID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => CatalogProductType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "CatalogProductType"),
    :schema_element => [
      ["domainName", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "DomainName")], [0, 1]],
      ["detailsURL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "DetailsURL")], [0, 1]],
      ["displayStockPhotos", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "DisplayStockPhotos")], [0, 1]],
      ["productID", ["ProductIDType[]", XSD::QName.new(NsEBLBaseComponents, "ProductID")], [0, nil]],
      ["itemCount", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "ItemCount")], [0, 1]],
      ["itemSpecifics", ["NameValueListArrayType", XSD::QName.new(NsEBLBaseComponents, "ItemSpecifics")], [0, 1]],
      ["reviewCount", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "ReviewCount")], [0, 1]],
      ["stockPhotoURL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "StockPhotoURL")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Title")], [0, 1]],
      ["productState", ["ProductStateCodeType", XSD::QName.new(NsEBLBaseComponents, "ProductState")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => CategoryArrayType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "CategoryArrayType"),
    :schema_element => [
      ["category", ["CategoryType[]", XSD::QName.new(NsEBLBaseComponents, "Category")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CategoryType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "CategoryType"),
    :schema_element => [
      ["categoryID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryID")], [0, 1]],
      ["categoryLevel", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "CategoryLevel")], [0, 1]],
      ["categoryName", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryName")], [0, 1]],
      ["categoryParentID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryParentID")], [0, 1]],
      ["categoryParentName", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryParentName")], [0, 1]],
      ["itemCount", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "ItemCount")], [0, 1]],
      ["categoryNamePath", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryNamePath")], [0, 1]],
      ["categoryIDPath", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryIDPath")], [0, 1]],
      ["leafCategory", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "LeafCategory")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => CharityType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "CharityType"),
    :schema_element => [
      ["charityID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CharityID")], [0, 1]],
      ["charityName", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CharityName")], [0, 1]],
      ["charityNumber", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "CharityNumber")], [0, 1]],
      ["donationPercent", ["SOAP::SOAPFloat", XSD::QName.new(NsEBLBaseComponents, "DonationPercent")], [0, 1]],
      ["mission", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Mission")], [0, 1]],
      ["logoURL", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "LogoURL")], [0, 1]],
      ["charityListing", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "CharityListing")], [0, 1]],
      ["status", ["CharityStatusCodeType", XSD::QName.new(NsEBLBaseComponents, "Status")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => DistanceType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "DistanceType"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => DomainHistogramType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "DomainHistogramType"),
    :schema_element => [
      ["domain", ["HistogramEntryType[]", XSD::QName.new(NsEBLBaseComponents, "Domain")], [0, nil]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalProductIDType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ExternalProductIDType"),
    :schema_element => [
      ["value", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Value")], [0, 1]],
      ["returnSearchResultOnDuplicates", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "ReturnSearchResultOnDuplicates")], [0, 1]],
      ["type", ["ExternalProductCodeType", XSD::QName.new(NsEBLBaseComponents, "Type")], [0, 1]],
      ["alternateValue", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "AlternateValue")], [0, nil]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => FeedbackDetailType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "FeedbackDetailType"),
    :schema_element => [
      ["commentingUser", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CommentingUser")], [0, 1]],
      ["commentingUserScore", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "CommentingUserScore")], [0, 1]],
      ["commentText", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CommentText")], [0, 1]],
      ["commentTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "CommentTime")], [0, 1]],
      ["commentType", ["CommentTypeCodeType", XSD::QName.new(NsEBLBaseComponents, "CommentType")], [0, 1]],
      ["feedbackResponse", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "FeedbackResponse")], [0, 1]],
      ["followUp", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "FollowUp")], [0, 1]],
      ["itemID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "ItemID")], [0, 1]],
      ["role", ["TradingRoleCodeType", XSD::QName.new(NsEBLBaseComponents, "Role")], [0, 1]],
      ["itemTitle", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "ItemTitle")], [0, 1]],
      ["itemPrice", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "ItemPrice")], [0, 1]],
      ["feedbackID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "FeedbackID")], [0, 1]],
      ["transactionID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "TransactionID")], [0, 1]],
      ["commentReplaced", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "CommentReplaced")], [0, 1]],
      ["responseReplaced", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "ResponseReplaced")], [0, 1]],
      ["followUpReplaced", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "FollowUpReplaced")], [0, 1]],
      ["countable", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "Countable")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => FeedbackHistoryType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "FeedbackHistoryType"),
    :schema_element => [
      ["bidRetractionFeedbackPeriods", ["FeedbackPeriodType[]", XSD::QName.new(NsEBLBaseComponents, "BidRetractionFeedbackPeriods")], [0, nil]],
      ["negativeFeedbackPeriods", ["FeedbackPeriodType[]", XSD::QName.new(NsEBLBaseComponents, "NegativeFeedbackPeriods")], [0, nil]],
      ["neutralFeedbackPeriods", ["FeedbackPeriodType[]", XSD::QName.new(NsEBLBaseComponents, "NeutralFeedbackPeriods")], [0, nil]],
      ["positiveFeedbackPeriods", ["FeedbackPeriodType[]", XSD::QName.new(NsEBLBaseComponents, "PositiveFeedbackPeriods")], [0, nil]],
      ["totalFeedbackPeriods", ["FeedbackPeriodType[]", XSD::QName.new(NsEBLBaseComponents, "TotalFeedbackPeriods")], [0, nil]],
      ["uniqueNegativeFeedbackCount", ["SOAP::SOAPLong", XSD::QName.new(NsEBLBaseComponents, "UniqueNegativeFeedbackCount")], [0, 1]],
      ["uniquePositiveFeedbackCount", ["SOAP::SOAPLong", XSD::QName.new(NsEBLBaseComponents, "UniquePositiveFeedbackCount")], [0, 1]],
      ["averageRatingDetails", ["AverageRatingDetailsType[]", XSD::QName.new(NsEBLBaseComponents, "AverageRatingDetails")], [0, nil]],
      ["neutralCommentCountFromSuspendedUsers", ["SOAP::SOAPLong", XSD::QName.new(NsEBLBaseComponents, "NeutralCommentCountFromSuspendedUsers")], [0, 1]],
      ["uniqueNeutralFeedbackCount", ["SOAP::SOAPLong", XSD::QName.new(NsEBLBaseComponents, "UniqueNeutralFeedbackCount")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => FeedbackPeriodType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "FeedbackPeriodType"),
    :schema_element => [
      ["periodInDays", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "PeriodInDays")], [0, 1]],
      ["count", ["SOAP::SOAPLong", XSD::QName.new(NsEBLBaseComponents, "Count")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => FindHalfProductsRequestType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "FindHalfProductsRequestType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractRequestType"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["includeSelector", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "IncludeSelector")], [0, 1]],
      ["availableItemsOnly", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "AvailableItemsOnly")], [0, 1]],
      ["domainName", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "DomainName")], [0, nil]],
      ["productID", ["ProductIDType", XSD::QName.new(NsEBLBaseComponents, "ProductID")], [0, 1]],
      ["queryKeywords", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "QueryKeywords")], [0, 1]],
      ["sellerID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "SellerID")], [0, 1]],
      ["productSort", ["ProductSortCodeType", XSD::QName.new(NsEBLBaseComponents, "ProductSort")], [0, 1]],
      ["sortOrder", ["SortOrderCodeType", XSD::QName.new(NsEBLBaseComponents, "SortOrder")], [0, 1]],
      ["maxEntries", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "MaxEntries")], [0, 1]],
      ["pageNumber", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "PageNumber")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => FindHalfProductsResponseType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "FindHalfProductsResponseType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractResponseType"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["domainHistogram", ["DomainHistogramType", XSD::QName.new(NsEBLBaseComponents, "DomainHistogram")], [0, 1]],
      ["pageNumber", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "PageNumber")], [0, 1]],
      ["approximatePages", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "ApproximatePages")], [0, 1]],
      ["moreResults", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "MoreResults")], [0, 1]],
      ["totalProducts", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "TotalProducts")], [0, 1]],
      ["products", ["HalfProductsType", XSD::QName.new(NsEBLBaseComponents, "Products")], [0, 1]],
      ["productSearchURL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "ProductSearchURL")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => FindItemsAdvancedRequestType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "FindItemsAdvancedRequestType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractRequestType"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["includeSelector", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "IncludeSelector")], [0, 1]],
      ["bidCountMax", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "BidCountMax")], [0, 1]],
      ["bidCountMin", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "BidCountMin")], [0, 1]],
      ["categoryHistogramMaxParents", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "CategoryHistogramMaxParents")], [0, 1]],
      ["categoryHistogramMaxChildren", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "CategoryHistogramMaxChildren")], [0, 1]],
      ["queryKeywords", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "QueryKeywords")], [0, 1]],
      ["categoryID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryID")], [0, 1]],
      ["itemSort", ["SimpleItemSortCodeType", XSD::QName.new(NsEBLBaseComponents, "ItemSort")], [0, 1]],
      ["sortOrder", ["SortOrderCodeType", XSD::QName.new(NsEBLBaseComponents, "SortOrder")], [0, 1]],
      ["groupMaxEntries", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "GroupMaxEntries")], [0, 1]],
      ["groupsMax", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "GroupsMax")], [0, 1]],
      ["endTimeFrom", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "EndTimeFrom")], [0, 1]],
      ["endTimeTo", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "EndTimeTo")], [0, 1]],
      ["modTimeFrom", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "ModTimeFrom")], [0, 1]],
      ["sellerID", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "SellerID")], [0, nil]],
      ["sellerIDExclude", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "SellerIDExclude")], [0, nil]],
      ["itemType", ["ItemTypeCodeType", XSD::QName.new(NsEBLBaseComponents, "ItemType")], [0, 1]],
      ["maxDistance", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "MaxDistance")], [0, 1]],
      ["postalCode", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "PostalCode")], [0, 1]],
      ["productID", ["ProductIDType", XSD::QName.new(NsEBLBaseComponents, "ProductID")], [0, 1]],
      ["maxEntries", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "MaxEntries")], [0, 1]],
      ["pageNumber", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "PageNumber")], [0, 1]],
      ["priceMax", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "PriceMax")], [0, 1]],
      ["priceMin", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "PriceMin")], [0, 1]],
      ["condition", ["ItemConditionCodeType", XSD::QName.new(NsEBLBaseComponents, "Condition")], [0, 1]],
      ["charityID", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "CharityID")], [0, 1]],
      ["searchFlag", ["SearchFlagCodeType[]", XSD::QName.new(NsEBLBaseComponents, "SearchFlag")], [0, nil]],
      ["paymentMethod", ["PaymentMethodSearchCodeType", XSD::QName.new(NsEBLBaseComponents, "PaymentMethod")], [0, 1]],
      ["storeName", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "StoreName")], [0, 1]],
      ["storeSearch", ["StoreSearchCodeType", XSD::QName.new(NsEBLBaseComponents, "StoreSearch")], [0, 1]],
      ["sellerBusinessType", ["SellerBusinessCodeType", XSD::QName.new(NsEBLBaseComponents, "SellerBusinessType")], [0, 1]],
      ["quantity", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "Quantity")], [0, 1]],
      ["quantityOperator", ["QuantityOperatorCodeType", XSD::QName.new(NsEBLBaseComponents, "QuantityOperator")], [0, 1]],
      ["currency", ["CurrencyCodeType", XSD::QName.new(NsEBLBaseComponents, "Currency")], [0, 1]],
      ["itemsAvailableTo", ["CountryCodeType", XSD::QName.new(NsEBLBaseComponents, "ItemsAvailableTo")], [0, 1]],
      ["itemsLocatedIn", ["CountryCodeType", XSD::QName.new(NsEBLBaseComponents, "ItemsLocatedIn")], [0, 1]],
      ["preferredLocation", ["PreferredLocationCodeType", XSD::QName.new(NsEBLBaseComponents, "PreferredLocation")], [0, 1]],
      ["feedbackScoreMax", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "FeedbackScoreMax")], [0, 1]],
      ["feedbackScoreMin", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "FeedbackScoreMin")], [0, 1]],
      ["excludeFlag", ["ExcludeFlagCodeType[]", XSD::QName.new(NsEBLBaseComponents, "ExcludeFlag")], [0, nil]],
      ["descriptionSearch", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "DescriptionSearch")], [0, 1]],
      ["hideDuplicateItems", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "HideDuplicateItems")], [0, 1]],
      ["shippingLocation", ["CountryCodeType", XSD::QName.new(NsEBLBaseComponents, "ShippingLocation")], [0, 1]],
      ["shippingPostalCode", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "ShippingPostalCode")], [0, 1]],
      ["itemLocationRegion", ["ItemLocationRegionCodeType", XSD::QName.new(NsEBLBaseComponents, "ItemLocationRegion")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => FindItemsAdvancedResponseType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "FindItemsAdvancedResponseType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractResponseType"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["searchResult", ["SearchResultType[]", XSD::QName.new(NsEBLBaseComponents, "SearchResult")], [0, nil]],
      ["pageNumber", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "PageNumber")], [0, 1]],
      ["totalPages", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "TotalPages")], [0, 1]],
      ["totalItems", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "TotalItems")], [0, 1]],
      ["categoryHistogram", ["CategoryArrayType", XSD::QName.new(NsEBLBaseComponents, "CategoryHistogram")], [0, 1]],
      ["totalStoresExpansionItems", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "TotalStoresExpansionItems")], [0, 1]],
      ["totalInternationalExpansionItems", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "TotalInternationalExpansionItems")], [0, 1]],
      ["itemSearchURL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "ItemSearchURL")], [0, 1]],
      ["duplicateItems", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "DuplicateItems")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => FindItemsRequestType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "FindItemsRequestType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractRequestType"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["queryKeywords", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "QueryKeywords")], [0, 1]],
      ["itemSort", ["SimpleItemSortCodeType", XSD::QName.new(NsEBLBaseComponents, "ItemSort")], [0, 1]],
      ["sortOrder", ["SortOrderCodeType", XSD::QName.new(NsEBLBaseComponents, "SortOrder")], [0, 1]],
      ["maxEntries", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "MaxEntries")], [0, 1]],
      ["postalCode", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "PostalCode")], [0, 1]],
      ["sellerID", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "SellerID")], [0, nil]],
      ["sellerIDExclude", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "SellerIDExclude")], [0, nil]],
      ["hideDuplicateItems", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "HideDuplicateItems")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => FindItemsResponseType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "FindItemsResponseType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractResponseType"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["item", ["SimpleItemType[]", XSD::QName.new(NsEBLBaseComponents, "Item")], [0, nil]],
      ["totalItems", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "TotalItems")], [0, 1]],
      ["itemSearchURL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "ItemSearchURL")], [0, 1]],
      ["duplicateItems", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "DuplicateItems")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => FindPopularItemsRequestType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "FindPopularItemsRequestType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractRequestType"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["categoryID", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "CategoryID")], [0, nil]],
      ["queryKeywords", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "QueryKeywords")], [0, 1]],
      ["categoryIDExclude", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "CategoryIDExclude")], [0, nil]],
      ["maxEntries", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "MaxEntries")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => FindPopularItemsResponseType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "FindPopularItemsResponseType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractResponseType"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["itemArray", ["SimpleItemArrayType", XSD::QName.new(NsEBLBaseComponents, "ItemArray")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => FindPopularSearchesRequestType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "FindPopularSearchesRequestType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractRequestType"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["categoryID", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "CategoryID")], [0, nil]],
      ["queryKeywords", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "QueryKeywords")], [0, nil]],
      ["maxKeywords", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "MaxKeywords")], [0, 1]],
      ["maxResultsPerPage", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "MaxResultsPerPage")], [0, 1]],
      ["pageNumber", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "PageNumber")], [0, 1]],
      ["includeChildCategories", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "IncludeChildCategories")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => FindPopularSearchesResponseType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "FindPopularSearchesResponseType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractResponseType"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["popularSearchResult", ["PopularSearchesType[]", XSD::QName.new(NsEBLBaseComponents, "PopularSearchResult")], [0, nil]],
      ["pageNumber", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "PageNumber")], [0, 1]],
      ["totalPages", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "TotalPages")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => FindProductsRequestType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "FindProductsRequestType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractRequestType"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["includeSelector", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "IncludeSelector")], [0, 1]],
      ["availableItemsOnly", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "AvailableItemsOnly")], [0, 1]],
      ["domainName", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "DomainName")], [0, nil]],
      ["productID", ["ProductIDType", XSD::QName.new(NsEBLBaseComponents, "ProductID")], [0, 1]],
      ["queryKeywords", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "QueryKeywords")], [0, 1]],
      ["productSort", ["ProductSortCodeType", XSD::QName.new(NsEBLBaseComponents, "ProductSort")], [0, 1]],
      ["sortOrder", ["SortOrderCodeType", XSD::QName.new(NsEBLBaseComponents, "SortOrder")], [0, 1]],
      ["maxEntries", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "MaxEntries")], [0, 1]],
      ["pageNumber", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "PageNumber")], [0, 1]],
      ["categoryID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryID")], [0, 1]],
      ["hideDuplicateItems", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "HideDuplicateItems")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => FindProductsResponseType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "FindProductsResponseType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractResponseType"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["approximatePages", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "ApproximatePages")], [0, 1]],
      ["moreResults", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "MoreResults")], [0, 1]],
      ["domainHistogram", ["DomainHistogramType", XSD::QName.new(NsEBLBaseComponents, "DomainHistogram")], [0, 1]],
      ["itemArray", ["SimpleItemArrayType", XSD::QName.new(NsEBLBaseComponents, "ItemArray")], [0, 1]],
      ["pageNumber", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "PageNumber")], [0, 1]],
      ["product", ["CatalogProductType[]", XSD::QName.new(NsEBLBaseComponents, "Product")], [0, nil]],
      ["totalProducts", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "TotalProducts")], [0, 1]],
      ["duplicateItems", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "DuplicateItems")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => FindReviewsAndGuidesRequestType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "FindReviewsAndGuidesRequestType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractRequestType"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["productID", ["ProductIDType", XSD::QName.new(NsEBLBaseComponents, "ProductID")], [0, 1]],
      ["userID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "UserID")], [0, 1]],
      ["categoryID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryID")], [0, 1]],
      ["maxResultsPerPage", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "MaxResultsPerPage")], [0, 1]],
      ["pageNumber", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "PageNumber")], [0, 1]],
      ["reviewSort", ["ReviewSortCodeType", XSD::QName.new(NsEBLBaseComponents, "ReviewSort")], [0, 1]],
      ["sortOrder", ["SortOrderCodeType", XSD::QName.new(NsEBLBaseComponents, "SortOrder")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => FindReviewsAndGuidesResponseType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "FindReviewsAndGuidesResponseType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractResponseType"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["reviewCount", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "ReviewCount")], [0, 1]],
      ["buyingGuideCount", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "BuyingGuideCount")], [0, 1]],
      ["reviewerRank", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "ReviewerRank")], [0, 1]],
      ["totalHelpfulnessVotes", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "TotalHelpfulnessVotes")], [0, 1]],
      ["productID", ["ProductIDType", XSD::QName.new(NsEBLBaseComponents, "ProductID")], [0, 1]],
      ["reviewsAndGuidesURL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "ReviewsAndGuidesURL")], [0, 1]],
      ["pageNumber", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "PageNumber")], [0, 1]],
      ["totalPages", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "TotalPages")], [0, 1]],
      ["buyingGuideDetails", ["BuyingGuideDetailsType", XSD::QName.new(NsEBLBaseComponents, "BuyingGuideDetails")], [0, 1]],
      ["reviewDetails", ["ReviewDetailsType", XSD::QName.new(NsEBLBaseComponents, "ReviewDetails")], [0, 1]],
      ["positiveHelpfulnessVotes", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "PositiveHelpfulnessVotes")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GetCategoryInfoRequestType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "GetCategoryInfoRequestType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractRequestType"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["categoryID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryID")], [0, 1]],
      ["includeSelector", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "IncludeSelector")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GetCategoryInfoResponseType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "GetCategoryInfoResponseType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractResponseType"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["categoryArray", ["CategoryArrayType", XSD::QName.new(NsEBLBaseComponents, "CategoryArray")], [0, 1]],
      ["categoryCount", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "CategoryCount")], [0, 1]],
      ["updateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "UpdateTime")], [0, 1]],
      ["categoryVersion", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryVersion")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GetItemStatusRequestType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "GetItemStatusRequestType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractRequestType"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["itemID", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "ItemID")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GetItemStatusResponseType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "GetItemStatusResponseType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractResponseType"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["item", ["SimpleItemType[]", XSD::QName.new(NsEBLBaseComponents, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GetMultipleItemsRequestType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "GetMultipleItemsRequestType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractRequestType"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["itemID", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "ItemID")], [0, nil]],
      ["includeSelector", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "IncludeSelector")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GetMultipleItemsResponseType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "GetMultipleItemsResponseType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractResponseType"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["item", ["SimpleItemType[]", XSD::QName.new(NsEBLBaseComponents, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GetShippingCostsRequestType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "GetShippingCostsRequestType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractRequestType"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["itemID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "ItemID")], [0, 1]],
      ["quantitySold", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "QuantitySold")], [0, 1]],
      ["destinationPostalCode", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "DestinationPostalCode")], [0, 1]],
      ["destinationCountryCode", ["CountryCodeType", XSD::QName.new(NsEBLBaseComponents, "DestinationCountryCode")], [0, 1]],
      ["includeDetails", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "IncludeDetails")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GetShippingCostsResponseType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "GetShippingCostsResponseType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractResponseType"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["shippingDetails", ["ShippingDetailsType", XSD::QName.new(NsEBLBaseComponents, "ShippingDetails")], [0, 1]],
      ["shippingCostSummary", ["ShippingCostSummaryType", XSD::QName.new(NsEBLBaseComponents, "ShippingCostSummary")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GetSingleItemRequestType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "GetSingleItemRequestType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractRequestType"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["itemID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "ItemID")], [0, 1]],
      ["includeSelector", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "IncludeSelector")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GetSingleItemResponseType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "GetSingleItemResponseType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractResponseType"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["item", ["SimpleItemType", XSD::QName.new(NsEBLBaseComponents, "Item")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GetUserProfileRequestType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "GetUserProfileRequestType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractRequestType"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["userID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "UserID")], [0, 1]],
      ["includeSelector", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "IncludeSelector")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GetUserProfileResponseType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "GetUserProfileResponseType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractResponseType"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["user", ["SimpleUserType", XSD::QName.new(NsEBLBaseComponents, "User")], [0, 1]],
      ["feedbackHistory", ["FeedbackHistoryType", XSD::QName.new(NsEBLBaseComponents, "FeedbackHistory")], [0, 1]],
      ["feedbackDetails", ["FeedbackDetailType[]", XSD::QName.new(NsEBLBaseComponents, "FeedbackDetails")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GeteBayTimeRequestType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "GeteBayTimeRequestType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractRequestType"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => GeteBayTimeResponseType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "GeteBayTimeResponseType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractResponseType"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => HalfCatalogProductType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "HalfCatalogProductType"),
    :schema_element => [
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Title")], [0, 1]],
      ["detailsURL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "DetailsURL")], [0, 1]],
      ["stockPhotoURL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "StockPhotoURL")], [0, 1]],
      ["shippingCostSummary", ["ShippingCostSummaryType", XSD::QName.new(NsEBLBaseComponents, "ShippingCostSummary")], [0, 1]],
      ["displayStockPhotos", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "DisplayStockPhotos")], [0, 1]],
      ["itemCount", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "ItemCount")], [0, 1]],
      ["productID", ["ProductIDType[]", XSD::QName.new(NsEBLBaseComponents, "ProductID")], [0, nil]],
      ["domainName", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "DomainName")], [0, 1]],
      ["itemSpecifics", ["NameValueListArrayType", XSD::QName.new(NsEBLBaseComponents, "ItemSpecifics")], [0, 1]],
      ["itemArray", ["SimpleItemArrayType", XSD::QName.new(NsEBLBaseComponents, "ItemArray")], [0, 1]],
      ["reviewCount", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "ReviewCount")], [0, 1]],
      ["minPrice", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "MinPrice")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => HalfProductsType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "HalfProductsType"),
    :schema_element => [
      ["product", ["HalfCatalogProductType[]", XSD::QName.new(NsEBLBaseComponents, "Product")], [0, nil]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => HistogramEntryType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "HistogramEntryType"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Name")], [0, 1]],
      ["count", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "Count")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => InternationalShippingServiceOptionType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "InternationalShippingServiceOptionType"),
    :schema_element => [
      ["shippingInsuranceCost", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "ShippingInsuranceCost")], [0, 1]],
      ["shippingServiceName", ["SOAP::SOAPToken", XSD::QName.new(NsEBLBaseComponents, "ShippingServiceName")], [0, 1]],
      ["shippingServiceAdditionalCost", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "ShippingServiceAdditionalCost")], [0, 1]],
      ["shippingServiceCost", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "ShippingServiceCost")], [0, 1]],
      ["shippingServicePriority", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "ShippingServicePriority")], [0, 1]],
      ["shipsTo", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "ShipsTo")], [0, nil]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => NameValueListArrayType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "NameValueListArrayType"),
    :schema_element => [
      ["nameValueList", ["NameValueListType[]", XSD::QName.new(NsEBLBaseComponents, "NameValueList")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => NameValueListType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "NameValueListType"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Name")], [0, 1]],
      ["value", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "Value")], [0, nil]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => PopularSearchesType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "PopularSearchesType"),
    :schema_element => [
      ["categoryID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryID")], [0, 1]],
      ["categoryParentID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryParentID")], [0, 1]],
      ["queryKeywords", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "QueryKeywords")], [0, 1]],
      ["alternativeSearches", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "AlternativeSearches")], [0, 1]],
      ["relatedSearches", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "RelatedSearches")], [0, 1]],
      ["categoryName", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryName")], [0, 1]],
      ["categoryParentName", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryParentName")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => ProductIDType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ProductIDType"),
    :schema_attribute => {
      XSD::QName.new(nil, "type") => "SOAP::SOAPToken"
    }
  )

  EncodedRegistry.register(
    :class => ReturnPolicyType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ReturnPolicyType"),
    :schema_element => [
      ["refund", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Refund")], [0, 1]],
      ["returnsWithin", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "ReturnsWithin")], [0, 1]],
      ["returnsAccepted", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "ReturnsAccepted")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Description")], [0, 1]],
      ["warrantyOffered", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "WarrantyOffered")], [0, 1]],
      ["warrantyType", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "WarrantyType")], [0, 1]],
      ["warrantyDuration", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "WarrantyDuration")], [0, 1]],
      ["eAN", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "EAN")], [0, 1]],
      ["shippingCostPaidBy", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "ShippingCostPaidBy")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => ReviewDetailsType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ReviewDetailsType"),
    :schema_element => [
      ["averageRating", ["SOAP::SOAPFloat", XSD::QName.new(NsEBLBaseComponents, "AverageRating")], [0, 1]],
      ["review", ["ReviewType[]", XSD::QName.new(NsEBLBaseComponents, "Review")], [0, nil]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => ReviewType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ReviewType"),
    :schema_element => [
      ["uRL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "URL")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Title")], [0, 1]],
      ["rating", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "Rating")], [0, 1]],
      ["text", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Text")], [0, 1]],
      ["userID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "UserID")], [0, 1]],
      ["creationTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "CreationTime")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => SalesTaxType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "SalesTaxType"),
    :schema_element => [
      ["salesTaxPercent", ["SOAP::SOAPFloat", XSD::QName.new(NsEBLBaseComponents, "SalesTaxPercent")], [0, 1]],
      ["salesTaxState", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "SalesTaxState")], [0, 1]],
      ["shippingIncludedInTax", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "ShippingIncludedInTax")], [0, 1]],
      ["salesTaxAmount", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "SalesTaxAmount")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => SearchResultType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "SearchResultType"),
    :schema_element => [
      ["categoryGroupNamePath", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryGroupNamePath")], [0, 1]],
      ["categoryGroupIDPath", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryGroupIDPath")], [0, 1]],
      ["categoryGroupItemCount", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "CategoryGroupItemCount")], [0, 1]],
      ["itemArray", ["SimpleItemArrayType", XSD::QName.new(NsEBLBaseComponents, "ItemArray")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => ShippingCostSummaryType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ShippingCostSummaryType"),
    :schema_element => [
      ["shippingServiceName", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "ShippingServiceName")], [0, 1]],
      ["shippingServiceCost", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "ShippingServiceCost")], [0, 1]],
      ["insuranceCost", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "InsuranceCost")], [0, 1]],
      ["shippingType", ["ShippingTypeCodeType", XSD::QName.new(NsEBLBaseComponents, "ShippingType")], [0, 1]],
      ["insuranceOption", ["InsuranceOptionCodeType", XSD::QName.new(NsEBLBaseComponents, "InsuranceOption")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => ShippingDetailsType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ShippingDetailsType"),
    :schema_element => [
      ["getItFast", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "GetItFast")], [0, 1]],
      ["insuranceCost", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "InsuranceCost")], [0, 1]],
      ["insuranceOption", ["InsuranceOptionCodeType", XSD::QName.new(NsEBLBaseComponents, "InsuranceOption")], [0, 1]],
      ["internationalShippingServiceOption", ["InternationalShippingServiceOptionType[]", XSD::QName.new(NsEBLBaseComponents, "InternationalShippingServiceOption")], [0, nil]],
      ["salesTax", ["SalesTaxType", XSD::QName.new(NsEBLBaseComponents, "SalesTax")], [0, 1]],
      ["shippingRateErrorMessage", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "ShippingRateErrorMessage")], [0, 1]],
      ["shippingServiceOption", ["ShippingServiceOptionType[]", XSD::QName.new(NsEBLBaseComponents, "ShippingServiceOption")], [0, nil]],
      ["taxTable", ["TaxTableType", XSD::QName.new(NsEBLBaseComponents, "TaxTable")], [0, 1]],
      ["internationalInsuranceCost", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "InternationalInsuranceCost")], [0, 1]],
      ["internationalInsuranceOption", ["InsuranceOptionCodeType", XSD::QName.new(NsEBLBaseComponents, "InternationalInsuranceOption")], [0, 1]],
      ["cODCost", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "CODCost")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => ShippingServiceOptionType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ShippingServiceOptionType"),
    :schema_element => [
      ["shippingInsuranceCost", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "ShippingInsuranceCost")], [0, 1]],
      ["shippingServiceName", ["SOAP::SOAPToken", XSD::QName.new(NsEBLBaseComponents, "ShippingServiceName")], [0, 1]],
      ["shippingServiceCost", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "ShippingServiceCost")], [0, 1]],
      ["shippingServiceAdditionalCost", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "ShippingServiceAdditionalCost")], [0, 1]],
      ["shippingServicePriority", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "ShippingServicePriority")], [0, 1]],
      ["expeditedService", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "ExpeditedService")], [0, 1]],
      ["shippingTimeMin", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "ShippingTimeMin")], [0, 1]],
      ["shippingTimeMax", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "ShippingTimeMax")], [0, 1]],
      ["shippingSurcharge", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "ShippingSurcharge")], [0, 1]],
      ["shipsTo", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "ShipsTo")], [0, nil]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => SimpleItemArrayType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "SimpleItemArrayType"),
    :schema_element => [
      ["item", ["SimpleItemType[]", XSD::QName.new(NsEBLBaseComponents, "Item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => SimpleItemType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "SimpleItemType"),
    :schema_element => [
      ["bestOfferEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "BestOfferEnabled")], [0, 1]],
      ["buyItNowPrice", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "BuyItNowPrice")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Description")], [0, 1]],
      ["itemID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "ItemID")], [0, 1]],
      ["buyItNowAvailable", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "BuyItNowAvailable")], [0, 1]],
      ["convertedBuyItNowPrice", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "ConvertedBuyItNowPrice")], [0, 1]],
      ["endTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "EndTime")], [0, 1]],
      ["startTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "StartTime")], [0, 1]],
      ["viewItemURLForNaturalSearch", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "ViewItemURLForNaturalSearch")], [0, 1]],
      ["listingType", ["ListingTypeCodeType", XSD::QName.new(NsEBLBaseComponents, "ListingType")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Location")], [0, 1]],
      ["paymentMethods", ["BuyerPaymentMethodCodeType[]", XSD::QName.new(NsEBLBaseComponents, "PaymentMethods")], [0, nil]],
      ["galleryURL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "GalleryURL")], [0, 1]],
      ["pictureURL", ["SOAP::SOAPAnyURI[]", XSD::QName.new(NsEBLBaseComponents, "PictureURL")], [0, nil]],
      ["postalCode", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "PostalCode")], [0, 1]],
      ["primaryCategoryID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "PrimaryCategoryID")], [0, 1]],
      ["primaryCategoryName", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "PrimaryCategoryName")], [0, 1]],
      ["quantity", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "Quantity")], [0, 1]],
      ["seller", ["SimpleUserType", XSD::QName.new(NsEBLBaseComponents, "Seller")], [0, 1]],
      ["bidCount", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "BidCount")], [0, 1]],
      ["convertedCurrentPrice", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "ConvertedCurrentPrice")], [0, 1]],
      ["currentPrice", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "CurrentPrice")], [0, 1]],
      ["highBidder", ["SimpleUserType", XSD::QName.new(NsEBLBaseComponents, "HighBidder")], [0, 1]],
      ["listingStatus", ["ListingStatusCodeType", XSD::QName.new(NsEBLBaseComponents, "ListingStatus")], [0, 1]],
      ["quantitySold", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "QuantitySold")], [0, 1]],
      ["reserveMet", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "ReserveMet")], [0, 1]],
      ["shipToLocations", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "ShipToLocations")], [0, nil]],
      ["site", ["SiteCodeType", XSD::QName.new(NsEBLBaseComponents, "Site")], [0, 1]],
      ["timeLeft", ["SOAP::SOAPDuration", XSD::QName.new(NsEBLBaseComponents, "TimeLeft")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Title")], [0, 1]],
      ["shippingCostSummary", ["ShippingCostSummaryType", XSD::QName.new(NsEBLBaseComponents, "ShippingCostSummary")], [0, 1]],
      ["itemSpecifics", ["NameValueListArrayType", XSD::QName.new(NsEBLBaseComponents, "ItemSpecifics")], [0, 1]],
      ["hitCount", ["SOAP::SOAPLong", XSD::QName.new(NsEBLBaseComponents, "HitCount")], [0, 1]],
      ["subtitle", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Subtitle")], [0, 1]],
      ["primaryCategoryIDPath", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "PrimaryCategoryIDPath")], [0, 1]],
      ["secondaryCategoryID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "SecondaryCategoryID")], [0, 1]],
      ["secondaryCategoryName", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "SecondaryCategoryName")], [0, 1]],
      ["secondaryCategoryIDPath", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "SecondaryCategoryIDPath")], [0, 1]],
      ["charity", ["CharityType", XSD::QName.new(NsEBLBaseComponents, "Charity")], [0, 1]],
      ["germanMotorsSearchable", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "GermanMotorsSearchable")], [0, 1]],
      ["getItFast", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "GetItFast")], [0, 1]],
      ["gift", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "Gift")], [0, 1]],
      ["pictureExists", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "PictureExists")], [0, 1]],
      ["recentListing", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "RecentListing")], [0, 1]],
      ["storefront", ["StorefrontType", XSD::QName.new(NsEBLBaseComponents, "Storefront")], [0, 1]],
      ["distanceFromBuyer", ["DistanceType", XSD::QName.new(NsEBLBaseComponents, "DistanceFromBuyer")], [0, 1]],
      ["country", ["CountryCodeType", XSD::QName.new(NsEBLBaseComponents, "Country")], [0, 1]],
      ["watchCount", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "WatchCount")], [0, 1]],
      ["halfItemCondition", ["HalfItemConditionCodeType", XSD::QName.new(NsEBLBaseComponents, "HalfItemCondition")], [0, 1]],
      ["sellerComments", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "SellerComments")], [0, 1]],
      ["returnPolicy", ["ReturnPolicyType", XSD::QName.new(NsEBLBaseComponents, "ReturnPolicy")], [0, 1]],
      ["minimumToBid", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "MinimumToBid")], [0, 1]],
      ["productID", ["ProductIDType", XSD::QName.new(NsEBLBaseComponents, "ProductID")], [0, 1]],
      ["autoPay", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "AutoPay")], [0, 1]],
      ["businessSellerDetails", ["BusinessSellerDetailsType", XSD::QName.new(NsEBLBaseComponents, "BusinessSellerDetails")], [0, 1]],
      ["paymentAllowedSite", ["SiteCodeType[]", XSD::QName.new(NsEBLBaseComponents, "PaymentAllowedSite")], [0, nil]],
      ["integratedMerchantCreditCardEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "IntegratedMerchantCreditCardEnabled")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => SimpleUserType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "SimpleUserType"),
    :schema_element => [
      ["userID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "UserID")], [0, 1]],
      ["feedbackPrivate", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "FeedbackPrivate")], [0, 1]],
      ["feedbackRatingStar", ["FeedbackRatingStarCodeType", XSD::QName.new(NsEBLBaseComponents, "FeedbackRatingStar")], [0, 1]],
      ["feedbackScore", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "FeedbackScore")], [0, 1]],
      ["userAnonymized", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "UserAnonymized")], [0, 1]],
      ["newUser", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "NewUser")], [0, 1]],
      ["registrationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "RegistrationDate")], [0, 1]],
      ["registrationSite", ["SiteCodeType", XSD::QName.new(NsEBLBaseComponents, "RegistrationSite")], [0, 1]],
      ["status", ["UserStatusCodeType", XSD::QName.new(NsEBLBaseComponents, "Status")], [0, 1]],
      ["sellerBusinessType", ["SellerBusinessCodeType", XSD::QName.new(NsEBLBaseComponents, "SellerBusinessType")], [0, 1]],
      ["storeURL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "StoreURL")], [0, 1]],
      ["storeName", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "StoreName")], [0, 1]],
      ["sellerItemsURL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "SellerItemsURL")], [0, 1]],
      ["aboutMeURL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "AboutMeURL")], [0, 1]],
      ["myWorldURL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "MyWorldURL")], [0, 1]],
      ["myWorldSmallImage", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "MyWorldSmallImage")], [0, 1]],
      ["myWorldLargeImage", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "MyWorldLargeImage")], [0, 1]],
      ["reviewsAndGuidesURL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "ReviewsAndGuidesURL")], [0, 1]],
      ["feedbackDetailsURL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "FeedbackDetailsURL")], [0, 1]],
      ["positiveFeedbackPercent", ["SOAP::SOAPFloat", XSD::QName.new(NsEBLBaseComponents, "PositiveFeedbackPercent")], [0, 1]],
      ["sellerLevel", ["SellerLevelCodeType", XSD::QName.new(NsEBLBaseComponents, "SellerLevel")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => StorefrontType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "StorefrontType"),
    :schema_element => [
      ["storeURL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "StoreURL")], [0, 1]],
      ["storeName", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "StoreName")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => TaxJurisdictionType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "TaxJurisdictionType"),
    :schema_element => [
      ["jurisdictionID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "JurisdictionID")], [0, 1]],
      ["salesTaxPercent", ["SOAP::SOAPFloat", XSD::QName.new(NsEBLBaseComponents, "SalesTaxPercent")], [0, 1]],
      ["shippingIncludedInTax", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "ShippingIncludedInTax")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => TaxTableType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "TaxTableType"),
    :schema_element => [
      ["taxJurisdiction", ["TaxJurisdictionType[]", XSD::QName.new(NsEBLBaseComponents, "TaxJurisdiction")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => VATDetailsType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "VATDetailsType"),
    :schema_element => [
      ["businessSeller", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "BusinessSeller")], [0, 1]],
      ["restrictedToBusiness", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "RestrictedToBusiness")], [0, 1]],
      ["vATPercent", ["SOAP::SOAPFloat", XSD::QName.new(NsEBLBaseComponents, "VATPercent")], [0, 1]],
      ["vATSite", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "VATSite")], [0, 1]],
      ["vATID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "VATID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => AckCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "AckCodeType")
  )

  EncodedRegistry.register(
    :class => ErrorClassificationCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ErrorClassificationCodeType")
  )

  EncodedRegistry.register(
    :class => SeverityCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "SeverityCodeType")
  )

  EncodedRegistry.register(
    :class => BuyerPaymentMethodCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "BuyerPaymentMethodCodeType")
  )

  EncodedRegistry.register(
    :class => CharityStatusCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "CharityStatusCodeType")
  )

  EncodedRegistry.register(
    :class => CommentTypeCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "CommentTypeCodeType")
  )

  EncodedRegistry.register(
    :class => CountryCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "CountryCodeType")
  )

  EncodedRegistry.register(
    :class => CurrencyCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "CurrencyCodeType")
  )

  EncodedRegistry.register(
    :class => ExcludeFlagCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ExcludeFlagCodeType")
  )

  EncodedRegistry.register(
    :class => ExternalProductCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ExternalProductCodeType")
  )

  EncodedRegistry.register(
    :class => FeedbackRatingDetailCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "FeedbackRatingDetailCodeType")
  )

  EncodedRegistry.register(
    :class => FeedbackRatingStarCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "FeedbackRatingStarCodeType")
  )

  EncodedRegistry.register(
    :class => HalfItemConditionCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "HalfItemConditionCodeType")
  )

  EncodedRegistry.register(
    :class => InsuranceOptionCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "InsuranceOptionCodeType")
  )

  EncodedRegistry.register(
    :class => ItemConditionCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ItemConditionCodeType")
  )

  EncodedRegistry.register(
    :class => ItemLocationRegionCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ItemLocationRegionCodeType")
  )

  EncodedRegistry.register(
    :class => ItemTypeCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ItemTypeCodeType")
  )

  EncodedRegistry.register(
    :class => ListingStatusCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ListingStatusCodeType")
  )

  EncodedRegistry.register(
    :class => ListingTypeCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ListingTypeCodeType")
  )

  EncodedRegistry.register(
    :class => PaymentMethodSearchCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "PaymentMethodSearchCodeType")
  )

  EncodedRegistry.register(
    :class => PreferredLocationCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "PreferredLocationCodeType")
  )

  EncodedRegistry.register(
    :class => ProductIDCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ProductIDCodeType")
  )

  EncodedRegistry.register(
    :class => ProductSortCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ProductSortCodeType")
  )

  EncodedRegistry.register(
    :class => ProductStateCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ProductStateCodeType")
  )

  EncodedRegistry.register(
    :class => QuantityOperatorCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "QuantityOperatorCodeType")
  )

  EncodedRegistry.register(
    :class => ReviewSortCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ReviewSortCodeType")
  )

  EncodedRegistry.register(
    :class => SearchFlagCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "SearchFlagCodeType")
  )

  EncodedRegistry.register(
    :class => SellerBusinessCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "SellerBusinessCodeType")
  )

  EncodedRegistry.register(
    :class => SellerLevelCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "SellerLevelCodeType")
  )

  EncodedRegistry.register(
    :class => ShippingTypeCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ShippingTypeCodeType")
  )

  EncodedRegistry.register(
    :class => SimpleItemSortCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "SimpleItemSortCodeType")
  )

  EncodedRegistry.register(
    :class => SiteCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "SiteCodeType")
  )

  EncodedRegistry.register(
    :class => SortOrderCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "SortOrderCodeType")
  )

  EncodedRegistry.register(
    :class => StoreSearchCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "StoreSearchCodeType")
  )

  EncodedRegistry.register(
    :class => TradingRoleCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "TradingRoleCodeType")
  )

  EncodedRegistry.register(
    :class => UserStatusCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "UserStatusCodeType")
  )

  LiteralRegistry.register(
    :class => ErrorParameterType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ErrorParameterType"),
    :schema_element => [
      ["value", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Value")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "ParamID") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => ErrorType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ErrorType"),
    :schema_element => [
      ["shortMessage", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "ShortMessage")], [0, 1]],
      ["longMessage", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "LongMessage")], [0, 1]],
      ["errorCode", ["SOAP::SOAPToken", XSD::QName.new(NsEBLBaseComponents, "ErrorCode")], [0, 1]],
      ["userDisplayHint", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "UserDisplayHint")], [0, 1]],
      ["severityCode", ["SeverityCodeType", XSD::QName.new(NsEBLBaseComponents, "SeverityCode")], [0, 1]],
      ["errorParameters", ["ErrorParameterType[]", XSD::QName.new(NsEBLBaseComponents, "ErrorParameters")], [0, nil]],
      ["errorClassification", ["ErrorClassificationCodeType", XSD::QName.new(NsEBLBaseComponents, "ErrorClassification")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => AddressType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "AddressType"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Name")], [0, 1]],
      ["street", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Street")], [0, 1]],
      ["street1", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Street1")], [0, 1]],
      ["street2", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Street2")], [0, 1]],
      ["cityName", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CityName")], [0, 1]],
      ["county", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "County")], [0, 1]],
      ["stateOrProvince", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "StateOrProvince")], [0, 1]],
      ["countryName", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CountryName")], [0, 1]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Phone")], [0, 1]],
      ["phoneCountryPrefix", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "PhoneCountryPrefix")], [0, 1]],
      ["phoneAreaOrCityCode", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "PhoneAreaOrCityCode")], [0, 1]],
      ["phoneLocalNumber", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "PhoneLocalNumber")], [0, 1]],
      ["phone2CountryPrefix", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Phone2CountryPrefix")], [0, 1]],
      ["phone2AreaOrCityCode", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Phone2AreaOrCityCode")], [0, 1]],
      ["phone2LocalNumber", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Phone2LocalNumber")], [0, 1]],
      ["postalCode", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "PostalCode")], [0, 1]],
      ["addressID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "AddressID")], [0, 1]],
      ["externalAddressID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "ExternalAddressID")], [0, 1]],
      ["internationalName", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "InternationalName")], [0, 1]],
      ["internationalStateAndCity", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "InternationalStateAndCity")], [0, 1]],
      ["internationalStreet", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "InternationalStreet")], [0, 1]],
      ["companyName", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CompanyName")], [0, 1]],
      ["firstName", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "FirstName")], [0, 1]],
      ["lastName", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "LastName")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => AmountType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "AmountType"),
    :schema_attribute => {
      XSD::QName.new(nil, "currencyID") => "SOAP::SOAPToken"
    }
  )

  LiteralRegistry.register(
    :class => AverageRatingDetailsType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "AverageRatingDetailsType"),
    :schema_element => [
      ["ratingDetail", ["FeedbackRatingDetailCodeType", XSD::QName.new(NsEBLBaseComponents, "RatingDetail")], [0, 1]],
      ["rating", ["SOAP::SOAPDouble", XSD::QName.new(NsEBLBaseComponents, "Rating")], [0, 1]],
      ["ratingCount", ["SOAP::SOAPLong", XSD::QName.new(NsEBLBaseComponents, "RatingCount")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => BusinessSellerDetailsType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "BusinessSellerDetailsType"),
    :schema_element => [
      ["address", ["AddressType", XSD::QName.new(NsEBLBaseComponents, "Address")], [0, 1]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Fax")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Email")], [0, 1]],
      ["additionalContactInformation", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "AdditionalContactInformation")], [0, 1]],
      ["tradeRegistrationNumber", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "TradeRegistrationNumber")], [0, 1]],
      ["legalInvoice", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "LegalInvoice")], [0, 1]],
      ["termsAndConditions", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "TermsAndConditions")], [0, 1]],
      ["vATDetails", ["VATDetailsType", XSD::QName.new(NsEBLBaseComponents, "VATDetails")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => BuyingGuideDetailsType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "BuyingGuideDetailsType"),
    :schema_element => [
      ["buyingGuide", ["BuyingGuideType[]", XSD::QName.new(NsEBLBaseComponents, "BuyingGuide")], [0, nil]],
      ["buyingGuideHub", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "BuyingGuideHub")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => BuyingGuideType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "BuyingGuideType"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Name")], [0, 1]],
      ["uRL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "URL")], [0, 1]],
      ["categoryID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryID")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Title")], [0, 1]],
      ["text", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Text")], [0, 1]],
      ["creationTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "CreationTime")], [0, 1]],
      ["userID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "UserID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogProductType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "CatalogProductType"),
    :schema_element => [
      ["domainName", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "DomainName")], [0, 1]],
      ["detailsURL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "DetailsURL")], [0, 1]],
      ["displayStockPhotos", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "DisplayStockPhotos")], [0, 1]],
      ["productID", ["ProductIDType[]", XSD::QName.new(NsEBLBaseComponents, "ProductID")], [0, nil]],
      ["itemCount", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "ItemCount")], [0, 1]],
      ["itemSpecifics", ["NameValueListArrayType", XSD::QName.new(NsEBLBaseComponents, "ItemSpecifics")], [0, 1]],
      ["reviewCount", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "ReviewCount")], [0, 1]],
      ["stockPhotoURL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "StockPhotoURL")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Title")], [0, 1]],
      ["productState", ["ProductStateCodeType", XSD::QName.new(NsEBLBaseComponents, "ProductState")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => CategoryArrayType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "CategoryArrayType"),
    :schema_element => [
      ["category", ["CategoryType[]", XSD::QName.new(NsEBLBaseComponents, "Category")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CategoryType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "CategoryType"),
    :schema_element => [
      ["categoryID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryID")], [0, 1]],
      ["categoryLevel", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "CategoryLevel")], [0, 1]],
      ["categoryName", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryName")], [0, 1]],
      ["categoryParentID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryParentID")], [0, 1]],
      ["categoryParentName", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryParentName")], [0, 1]],
      ["itemCount", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "ItemCount")], [0, 1]],
      ["categoryNamePath", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryNamePath")], [0, 1]],
      ["categoryIDPath", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryIDPath")], [0, 1]],
      ["leafCategory", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "LeafCategory")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => CharityType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "CharityType"),
    :schema_element => [
      ["charityID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CharityID")], [0, 1]],
      ["charityName", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CharityName")], [0, 1]],
      ["charityNumber", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "CharityNumber")], [0, 1]],
      ["donationPercent", ["SOAP::SOAPFloat", XSD::QName.new(NsEBLBaseComponents, "DonationPercent")], [0, 1]],
      ["mission", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Mission")], [0, 1]],
      ["logoURL", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "LogoURL")], [0, 1]],
      ["charityListing", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "CharityListing")], [0, 1]],
      ["status", ["CharityStatusCodeType", XSD::QName.new(NsEBLBaseComponents, "Status")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => DistanceType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "DistanceType"),
    :schema_attribute => {
      XSD::QName.new(nil, "unit") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => DomainHistogramType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "DomainHistogramType"),
    :schema_element => [
      ["domain", ["HistogramEntryType[]", XSD::QName.new(NsEBLBaseComponents, "Domain")], [0, nil]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalProductIDType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ExternalProductIDType"),
    :schema_element => [
      ["value", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Value")], [0, 1]],
      ["returnSearchResultOnDuplicates", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "ReturnSearchResultOnDuplicates")], [0, 1]],
      ["type", ["ExternalProductCodeType", XSD::QName.new(NsEBLBaseComponents, "Type")], [0, 1]],
      ["alternateValue", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "AlternateValue")], [0, nil]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => FeedbackDetailType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "FeedbackDetailType"),
    :schema_element => [
      ["commentingUser", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CommentingUser")], [0, 1]],
      ["commentingUserScore", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "CommentingUserScore")], [0, 1]],
      ["commentText", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CommentText")], [0, 1]],
      ["commentTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "CommentTime")], [0, 1]],
      ["commentType", ["CommentTypeCodeType", XSD::QName.new(NsEBLBaseComponents, "CommentType")], [0, 1]],
      ["feedbackResponse", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "FeedbackResponse")], [0, 1]],
      ["followUp", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "FollowUp")], [0, 1]],
      ["itemID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "ItemID")], [0, 1]],
      ["role", ["TradingRoleCodeType", XSD::QName.new(NsEBLBaseComponents, "Role")], [0, 1]],
      ["itemTitle", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "ItemTitle")], [0, 1]],
      ["itemPrice", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "ItemPrice")], [0, 1]],
      ["feedbackID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "FeedbackID")], [0, 1]],
      ["transactionID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "TransactionID")], [0, 1]],
      ["commentReplaced", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "CommentReplaced")], [0, 1]],
      ["responseReplaced", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "ResponseReplaced")], [0, 1]],
      ["followUpReplaced", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "FollowUpReplaced")], [0, 1]],
      ["countable", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "Countable")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => FeedbackHistoryType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "FeedbackHistoryType"),
    :schema_element => [
      ["bidRetractionFeedbackPeriods", ["FeedbackPeriodType[]", XSD::QName.new(NsEBLBaseComponents, "BidRetractionFeedbackPeriods")], [0, nil]],
      ["negativeFeedbackPeriods", ["FeedbackPeriodType[]", XSD::QName.new(NsEBLBaseComponents, "NegativeFeedbackPeriods")], [0, nil]],
      ["neutralFeedbackPeriods", ["FeedbackPeriodType[]", XSD::QName.new(NsEBLBaseComponents, "NeutralFeedbackPeriods")], [0, nil]],
      ["positiveFeedbackPeriods", ["FeedbackPeriodType[]", XSD::QName.new(NsEBLBaseComponents, "PositiveFeedbackPeriods")], [0, nil]],
      ["totalFeedbackPeriods", ["FeedbackPeriodType[]", XSD::QName.new(NsEBLBaseComponents, "TotalFeedbackPeriods")], [0, nil]],
      ["uniqueNegativeFeedbackCount", ["SOAP::SOAPLong", XSD::QName.new(NsEBLBaseComponents, "UniqueNegativeFeedbackCount")], [0, 1]],
      ["uniquePositiveFeedbackCount", ["SOAP::SOAPLong", XSD::QName.new(NsEBLBaseComponents, "UniquePositiveFeedbackCount")], [0, 1]],
      ["averageRatingDetails", ["AverageRatingDetailsType[]", XSD::QName.new(NsEBLBaseComponents, "AverageRatingDetails")], [0, nil]],
      ["neutralCommentCountFromSuspendedUsers", ["SOAP::SOAPLong", XSD::QName.new(NsEBLBaseComponents, "NeutralCommentCountFromSuspendedUsers")], [0, 1]],
      ["uniqueNeutralFeedbackCount", ["SOAP::SOAPLong", XSD::QName.new(NsEBLBaseComponents, "UniqueNeutralFeedbackCount")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => FeedbackPeriodType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "FeedbackPeriodType"),
    :schema_element => [
      ["periodInDays", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "PeriodInDays")], [0, 1]],
      ["count", ["SOAP::SOAPLong", XSD::QName.new(NsEBLBaseComponents, "Count")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => FindHalfProductsRequestType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "FindHalfProductsRequestType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractRequestType"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["includeSelector", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "IncludeSelector")], [0, 1]],
      ["availableItemsOnly", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "AvailableItemsOnly")], [0, 1]],
      ["domainName", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "DomainName")], [0, nil]],
      ["productID", ["ProductIDType", XSD::QName.new(NsEBLBaseComponents, "ProductID")], [0, 1]],
      ["queryKeywords", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "QueryKeywords")], [0, 1]],
      ["sellerID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "SellerID")], [0, 1]],
      ["productSort", ["ProductSortCodeType", XSD::QName.new(NsEBLBaseComponents, "ProductSort")], [0, 1]],
      ["sortOrder", ["SortOrderCodeType", XSD::QName.new(NsEBLBaseComponents, "SortOrder")], [0, 1]],
      ["maxEntries", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "MaxEntries")], [0, 1]],
      ["pageNumber", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "PageNumber")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FindHalfProductsResponseType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "FindHalfProductsResponseType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractResponseType"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["domainHistogram", ["DomainHistogramType", XSD::QName.new(NsEBLBaseComponents, "DomainHistogram")], [0, 1]],
      ["pageNumber", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "PageNumber")], [0, 1]],
      ["approximatePages", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "ApproximatePages")], [0, 1]],
      ["moreResults", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "MoreResults")], [0, 1]],
      ["totalProducts", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "TotalProducts")], [0, 1]],
      ["products", ["HalfProductsType", XSD::QName.new(NsEBLBaseComponents, "Products")], [0, 1]],
      ["productSearchURL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "ProductSearchURL")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FindItemsAdvancedRequestType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "FindItemsAdvancedRequestType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractRequestType"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["includeSelector", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "IncludeSelector")], [0, 1]],
      ["bidCountMax", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "BidCountMax")], [0, 1]],
      ["bidCountMin", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "BidCountMin")], [0, 1]],
      ["categoryHistogramMaxParents", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "CategoryHistogramMaxParents")], [0, 1]],
      ["categoryHistogramMaxChildren", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "CategoryHistogramMaxChildren")], [0, 1]],
      ["queryKeywords", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "QueryKeywords")], [0, 1]],
      ["categoryID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryID")], [0, 1]],
      ["itemSort", ["SimpleItemSortCodeType", XSD::QName.new(NsEBLBaseComponents, "ItemSort")], [0, 1]],
      ["sortOrder", ["SortOrderCodeType", XSD::QName.new(NsEBLBaseComponents, "SortOrder")], [0, 1]],
      ["groupMaxEntries", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "GroupMaxEntries")], [0, 1]],
      ["groupsMax", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "GroupsMax")], [0, 1]],
      ["endTimeFrom", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "EndTimeFrom")], [0, 1]],
      ["endTimeTo", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "EndTimeTo")], [0, 1]],
      ["modTimeFrom", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "ModTimeFrom")], [0, 1]],
      ["sellerID", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "SellerID")], [0, nil]],
      ["sellerIDExclude", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "SellerIDExclude")], [0, nil]],
      ["itemType", ["ItemTypeCodeType", XSD::QName.new(NsEBLBaseComponents, "ItemType")], [0, 1]],
      ["maxDistance", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "MaxDistance")], [0, 1]],
      ["postalCode", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "PostalCode")], [0, 1]],
      ["productID", ["ProductIDType", XSD::QName.new(NsEBLBaseComponents, "ProductID")], [0, 1]],
      ["maxEntries", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "MaxEntries")], [0, 1]],
        ["pageNumber", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "PageNumber")], [0, 1]],
        ["priceMax", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "PriceMax")], [0, 1]],
      ["priceMin", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "PriceMin")], [0, 1]],
      ["condition", ["ItemConditionCodeType", XSD::QName.new(NsEBLBaseComponents, "Condition")], [0, 1]],
      ["charityID", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "CharityID")], [0, 1]],
      ["searchFlag", ["SearchFlagCodeType[]", XSD::QName.new(NsEBLBaseComponents, "SearchFlag")], [0, nil]],
      ["paymentMethod", ["PaymentMethodSearchCodeType", XSD::QName.new(NsEBLBaseComponents, "PaymentMethod")], [0, 1]],
      ["storeName", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "StoreName")], [0, 1]],
      ["storeSearch", ["StoreSearchCodeType", XSD::QName.new(NsEBLBaseComponents, "StoreSearch")], [0, 1]],
      ["sellerBusinessType", ["SellerBusinessCodeType", XSD::QName.new(NsEBLBaseComponents, "SellerBusinessType")], [0, 1]],
      ["quantity", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "Quantity")], [0, 1]],
      ["quantityOperator", ["QuantityOperatorCodeType", XSD::QName.new(NsEBLBaseComponents, "QuantityOperator")], [0, 1]],
      ["currency", ["CurrencyCodeType", XSD::QName.new(NsEBLBaseComponents, "Currency")], [0, 1]],
      ["itemsAvailableTo", ["CountryCodeType", XSD::QName.new(NsEBLBaseComponents, "ItemsAvailableTo")], [0, 1]],
      ["itemsLocatedIn", ["CountryCodeType", XSD::QName.new(NsEBLBaseComponents, "ItemsLocatedIn")], [0, 1]],
      ["preferredLocation", ["PreferredLocationCodeType", XSD::QName.new(NsEBLBaseComponents, "PreferredLocation")], [0, 1]],
      ["feedbackScoreMax", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "FeedbackScoreMax")], [0, 1]],
      ["feedbackScoreMin", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "FeedbackScoreMin")], [0, 1]],
      ["excludeFlag", ["ExcludeFlagCodeType[]", XSD::QName.new(NsEBLBaseComponents, "ExcludeFlag")], [0, nil]],
      ["descriptionSearch", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "DescriptionSearch")], [0, 1]],
      ["hideDuplicateItems", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "HideDuplicateItems")], [0, 1]],
      ["shippingLocation", ["CountryCodeType", XSD::QName.new(NsEBLBaseComponents, "ShippingLocation")], [0, 1]],
      ["shippingPostalCode", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "ShippingPostalCode")], [0, 1]],
      ["itemLocationRegion", ["ItemLocationRegionCodeType", XSD::QName.new(NsEBLBaseComponents, "ItemLocationRegion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FindItemsAdvancedResponseType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "FindItemsAdvancedResponseType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractResponseType"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["searchResult", ["SearchResultType[]", XSD::QName.new(NsEBLBaseComponents, "SearchResult")], [0, nil]],
      ["pageNumber", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "PageNumber")], [0, 1]],
      ["totalPages", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "TotalPages")], [0, 1]],
      ["totalItems", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "TotalItems")], [0, 1]],
      ["categoryHistogram", ["CategoryArrayType", XSD::QName.new(NsEBLBaseComponents, "CategoryHistogram")], [0, 1]],
      ["totalStoresExpansionItems", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "TotalStoresExpansionItems")], [0, 1]],
      ["totalInternationalExpansionItems", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "TotalInternationalExpansionItems")], [0, 1]],
      ["itemSearchURL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "ItemSearchURL")], [0, 1]],
      ["duplicateItems", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "DuplicateItems")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FindItemsRequestType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "FindItemsRequestType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractRequestType"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["queryKeywords", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "QueryKeywords")], [0, 1]],
      ["itemSort", ["SimpleItemSortCodeType", XSD::QName.new(NsEBLBaseComponents, "ItemSort")], [0, 1]],
      ["sortOrder", ["SortOrderCodeType", XSD::QName.new(NsEBLBaseComponents, "SortOrder")], [0, 1]],
      ["maxEntries", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "MaxEntries")], [0, 1]],
      ["postalCode", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "PostalCode")], [0, 1]],
      ["sellerID", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "SellerID")], [0, nil]],
      ["sellerIDExclude", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "SellerIDExclude")], [0, nil]],
      ["hideDuplicateItems", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "HideDuplicateItems")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FindItemsResponseType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "FindItemsResponseType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractResponseType"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["item", ["SimpleItemType[]", XSD::QName.new(NsEBLBaseComponents, "Item")], [0, nil]],
      ["totalItems", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "TotalItems")], [0, 1]],
      ["itemSearchURL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "ItemSearchURL")], [0, 1]],
      ["duplicateItems", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "DuplicateItems")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FindPopularItemsRequestType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "FindPopularItemsRequestType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractRequestType"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["categoryID", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "CategoryID")], [0, nil]],
      ["queryKeywords", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "QueryKeywords")], [0, 1]],
      ["categoryIDExclude", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "CategoryIDExclude")], [0, nil]],
      ["maxEntries", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "MaxEntries")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FindPopularItemsResponseType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "FindPopularItemsResponseType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractResponseType"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["itemArray", ["SimpleItemArrayType", XSD::QName.new(NsEBLBaseComponents, "ItemArray")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FindPopularSearchesRequestType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "FindPopularSearchesRequestType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractRequestType"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["categoryID", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "CategoryID")], [0, nil]],
      ["queryKeywords", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "QueryKeywords")], [0, nil]],
      ["maxKeywords", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "MaxKeywords")], [0, 1]],
      ["maxResultsPerPage", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "MaxResultsPerPage")], [0, 1]],
      ["pageNumber", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "PageNumber")], [0, 1]],
      ["includeChildCategories", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "IncludeChildCategories")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FindPopularSearchesResponseType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "FindPopularSearchesResponseType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractResponseType"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["popularSearchResult", ["PopularSearchesType[]", XSD::QName.new(NsEBLBaseComponents, "PopularSearchResult")], [0, nil]],
      ["pageNumber", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "PageNumber")], [0, 1]],
      ["totalPages", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "TotalPages")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FindProductsRequestType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "FindProductsRequestType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractRequestType"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["includeSelector", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "IncludeSelector")], [0, 1]],
      ["availableItemsOnly", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "AvailableItemsOnly")], [0, 1]],
      ["domainName", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "DomainName")], [0, nil]],
      ["productID", ["ProductIDType", XSD::QName.new(NsEBLBaseComponents, "ProductID")], [0, 1]],
      ["queryKeywords", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "QueryKeywords")], [0, 1]],
      ["productSort", ["ProductSortCodeType", XSD::QName.new(NsEBLBaseComponents, "ProductSort")], [0, 1]],
      ["sortOrder", ["SortOrderCodeType", XSD::QName.new(NsEBLBaseComponents, "SortOrder")], [0, 1]],
      ["maxEntries", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "MaxEntries")], [0, 1]],
      ["pageNumber", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "PageNumber")], [0, 1]],
      ["categoryID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryID")], [0, 1]],
      ["hideDuplicateItems", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "HideDuplicateItems")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FindProductsResponseType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "FindProductsResponseType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractResponseType"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["approximatePages", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "ApproximatePages")], [0, 1]],
      ["moreResults", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "MoreResults")], [0, 1]],
      ["domainHistogram", ["DomainHistogramType", XSD::QName.new(NsEBLBaseComponents, "DomainHistogram")], [0, 1]],
      ["itemArray", ["SimpleItemArrayType", XSD::QName.new(NsEBLBaseComponents, "ItemArray")], [0, 1]],
      ["pageNumber", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "PageNumber")], [0, 1]],
      ["product", ["CatalogProductType[]", XSD::QName.new(NsEBLBaseComponents, "Product")], [0, nil]],
      ["totalProducts", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "TotalProducts")], [0, 1]],
      ["duplicateItems", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "DuplicateItems")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FindReviewsAndGuidesRequestType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "FindReviewsAndGuidesRequestType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractRequestType"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["productID", ["ProductIDType", XSD::QName.new(NsEBLBaseComponents, "ProductID")], [0, 1]],
      ["userID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "UserID")], [0, 1]],
      ["categoryID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryID")], [0, 1]],
      ["maxResultsPerPage", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "MaxResultsPerPage")], [0, 1]],
      ["pageNumber", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "PageNumber")], [0, 1]],
      ["reviewSort", ["ReviewSortCodeType", XSD::QName.new(NsEBLBaseComponents, "ReviewSort")], [0, 1]],
      ["sortOrder", ["SortOrderCodeType", XSD::QName.new(NsEBLBaseComponents, "SortOrder")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FindReviewsAndGuidesResponseType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "FindReviewsAndGuidesResponseType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractResponseType"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["reviewCount", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "ReviewCount")], [0, 1]],
      ["buyingGuideCount", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "BuyingGuideCount")], [0, 1]],
      ["reviewerRank", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "ReviewerRank")], [0, 1]],
      ["totalHelpfulnessVotes", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "TotalHelpfulnessVotes")], [0, 1]],
      ["productID", ["ProductIDType", XSD::QName.new(NsEBLBaseComponents, "ProductID")], [0, 1]],
      ["reviewsAndGuidesURL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "ReviewsAndGuidesURL")], [0, 1]],
      ["pageNumber", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "PageNumber")], [0, 1]],
      ["totalPages", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "TotalPages")], [0, 1]],
      ["buyingGuideDetails", ["BuyingGuideDetailsType", XSD::QName.new(NsEBLBaseComponents, "BuyingGuideDetails")], [0, 1]],
      ["reviewDetails", ["ReviewDetailsType", XSD::QName.new(NsEBLBaseComponents, "ReviewDetails")], [0, 1]],
      ["positiveHelpfulnessVotes", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "PositiveHelpfulnessVotes")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCategoryInfoRequestType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "GetCategoryInfoRequestType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractRequestType"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["categoryID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryID")], [0, 1]],
      ["includeSelector", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "IncludeSelector")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCategoryInfoResponseType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "GetCategoryInfoResponseType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractResponseType"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["categoryArray", ["CategoryArrayType", XSD::QName.new(NsEBLBaseComponents, "CategoryArray")], [0, 1]],
      ["categoryCount", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "CategoryCount")], [0, 1]],
      ["updateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "UpdateTime")], [0, 1]],
      ["categoryVersion", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryVersion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetItemStatusRequestType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "GetItemStatusRequestType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractRequestType"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["itemID", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "ItemID")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GetItemStatusResponseType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "GetItemStatusResponseType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractResponseType"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["item", ["SimpleItemType[]", XSD::QName.new(NsEBLBaseComponents, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GetMultipleItemsRequestType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "GetMultipleItemsRequestType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractRequestType"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["itemID", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "ItemID")], [0, nil]],
      ["includeSelector", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "IncludeSelector")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetMultipleItemsResponseType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "GetMultipleItemsResponseType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractResponseType"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["item", ["SimpleItemType[]", XSD::QName.new(NsEBLBaseComponents, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GetShippingCostsRequestType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "GetShippingCostsRequestType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractRequestType"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["itemID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "ItemID")], [0, 1]],
      ["quantitySold", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "QuantitySold")], [0, 1]],
      ["destinationPostalCode", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "DestinationPostalCode")], [0, 1]],
      ["destinationCountryCode", ["CountryCodeType", XSD::QName.new(NsEBLBaseComponents, "DestinationCountryCode")], [0, 1]],
      ["includeDetails", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "IncludeDetails")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetShippingCostsResponseType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "GetShippingCostsResponseType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractResponseType"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["shippingDetails", ["ShippingDetailsType", XSD::QName.new(NsEBLBaseComponents, "ShippingDetails")], [0, 1]],
      ["shippingCostSummary", ["ShippingCostSummaryType", XSD::QName.new(NsEBLBaseComponents, "ShippingCostSummary")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetSingleItemRequestType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "GetSingleItemRequestType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractRequestType"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["itemID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "ItemID")], [0, 1]],
      ["includeSelector", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "IncludeSelector")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetSingleItemResponseType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "GetSingleItemResponseType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractResponseType"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["item", ["SimpleItemType", XSD::QName.new(NsEBLBaseComponents, "Item")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetUserProfileRequestType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "GetUserProfileRequestType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractRequestType"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["userID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "UserID")], [0, 1]],
      ["includeSelector", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "IncludeSelector")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetUserProfileResponseType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "GetUserProfileResponseType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractResponseType"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["user", ["SimpleUserType", XSD::QName.new(NsEBLBaseComponents, "User")], [0, 1]],
      ["feedbackHistory", ["FeedbackHistoryType", XSD::QName.new(NsEBLBaseComponents, "FeedbackHistory")], [0, 1]],
      ["feedbackDetails", ["FeedbackDetailType[]", XSD::QName.new(NsEBLBaseComponents, "FeedbackDetails")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GeteBayTimeRequestType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "GeteBayTimeRequestType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractRequestType"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GeteBayTimeResponseType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "GeteBayTimeResponseType"),
    :schema_basetype => XSD::QName.new(NsEBLBaseComponents, "AbstractResponseType"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => HalfCatalogProductType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "HalfCatalogProductType"),
    :schema_element => [
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Title")], [0, 1]],
      ["detailsURL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "DetailsURL")], [0, 1]],
      ["stockPhotoURL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "StockPhotoURL")], [0, 1]],
      ["shippingCostSummary", ["ShippingCostSummaryType", XSD::QName.new(NsEBLBaseComponents, "ShippingCostSummary")], [0, 1]],
      ["displayStockPhotos", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "DisplayStockPhotos")], [0, 1]],
      ["itemCount", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "ItemCount")], [0, 1]],
      ["productID", ["ProductIDType[]", XSD::QName.new(NsEBLBaseComponents, "ProductID")], [0, nil]],
      ["domainName", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "DomainName")], [0, 1]],
      ["itemSpecifics", ["NameValueListArrayType", XSD::QName.new(NsEBLBaseComponents, "ItemSpecifics")], [0, 1]],
      ["itemArray", ["SimpleItemArrayType", XSD::QName.new(NsEBLBaseComponents, "ItemArray")], [0, 1]],
      ["reviewCount", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "ReviewCount")], [0, 1]],
      ["minPrice", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "MinPrice")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => HalfProductsType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "HalfProductsType"),
    :schema_element => [
      ["product", ["HalfCatalogProductType[]", XSD::QName.new(NsEBLBaseComponents, "Product")], [0, nil]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => HistogramEntryType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "HistogramEntryType"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Name")], [0, 1]],
      ["count", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "Count")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => InternationalShippingServiceOptionType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "InternationalShippingServiceOptionType"),
    :schema_element => [
      ["shippingInsuranceCost", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "ShippingInsuranceCost")], [0, 1]],
      ["shippingServiceName", ["SOAP::SOAPToken", XSD::QName.new(NsEBLBaseComponents, "ShippingServiceName")], [0, 1]],
      ["shippingServiceAdditionalCost", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "ShippingServiceAdditionalCost")], [0, 1]],
      ["shippingServiceCost", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "ShippingServiceCost")], [0, 1]],
      ["shippingServicePriority", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "ShippingServicePriority")], [0, 1]],
      ["shipsTo", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "ShipsTo")], [0, nil]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => NameValueListArrayType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "NameValueListArrayType"),
    :schema_element => [
      ["nameValueList", ["NameValueListType[]", XSD::QName.new(NsEBLBaseComponents, "NameValueList")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => NameValueListType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "NameValueListType"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Name")], [0, 1]],
      ["value", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "Value")], [0, nil]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => PopularSearchesType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "PopularSearchesType"),
    :schema_element => [
      ["categoryID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryID")], [0, 1]],
      ["categoryParentID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryParentID")], [0, 1]],
      ["queryKeywords", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "QueryKeywords")], [0, 1]],
      ["alternativeSearches", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "AlternativeSearches")], [0, 1]],
      ["relatedSearches", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "RelatedSearches")], [0, 1]],
      ["categoryName", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryName")], [0, 1]],
      ["categoryParentName", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryParentName")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => ProductIDType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ProductIDType"),
    :schema_attribute => {
      XSD::QName.new(nil, "type") => "SOAP::SOAPToken"
    }
  )

  LiteralRegistry.register(
    :class => ReturnPolicyType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ReturnPolicyType"),
    :schema_element => [
      ["refund", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Refund")], [0, 1]],
      ["returnsWithin", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "ReturnsWithin")], [0, 1]],
      ["returnsAccepted", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "ReturnsAccepted")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Description")], [0, 1]],
      ["warrantyOffered", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "WarrantyOffered")], [0, 1]],
      ["warrantyType", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "WarrantyType")], [0, 1]],
      ["warrantyDuration", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "WarrantyDuration")], [0, 1]],
      ["eAN", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "EAN")], [0, 1]],
      ["shippingCostPaidBy", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "ShippingCostPaidBy")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => ReviewDetailsType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ReviewDetailsType"),
    :schema_element => [
      ["averageRating", ["SOAP::SOAPFloat", XSD::QName.new(NsEBLBaseComponents, "AverageRating")], [0, 1]],
      ["review", ["ReviewType[]", XSD::QName.new(NsEBLBaseComponents, "Review")], [0, nil]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => ReviewType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ReviewType"),
    :schema_element => [
      ["uRL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "URL")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Title")], [0, 1]],
      ["rating", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "Rating")], [0, 1]],
      ["text", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Text")], [0, 1]],
      ["userID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "UserID")], [0, 1]],
      ["creationTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "CreationTime")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => SalesTaxType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "SalesTaxType"),
    :schema_element => [
      ["salesTaxPercent", ["SOAP::SOAPFloat", XSD::QName.new(NsEBLBaseComponents, "SalesTaxPercent")], [0, 1]],
      ["salesTaxState", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "SalesTaxState")], [0, 1]],
      ["shippingIncludedInTax", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "ShippingIncludedInTax")], [0, 1]],
      ["salesTaxAmount", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "SalesTaxAmount")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => SearchResultType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "SearchResultType"),
    :schema_element => [
      ["categoryGroupNamePath", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryGroupNamePath")], [0, 1]],
      ["categoryGroupIDPath", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryGroupIDPath")], [0, 1]],
      ["categoryGroupItemCount", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "CategoryGroupItemCount")], [0, 1]],
      ["itemArray", ["SimpleItemArrayType", XSD::QName.new(NsEBLBaseComponents, "ItemArray")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => ShippingCostSummaryType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ShippingCostSummaryType"),
    :schema_element => [
      ["shippingServiceName", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "ShippingServiceName")], [0, 1]],
      ["shippingServiceCost", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "ShippingServiceCost")], [0, 1]],
      ["insuranceCost", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "InsuranceCost")], [0, 1]],
      ["shippingType", ["ShippingTypeCodeType", XSD::QName.new(NsEBLBaseComponents, "ShippingType")], [0, 1]],
      ["insuranceOption", ["InsuranceOptionCodeType", XSD::QName.new(NsEBLBaseComponents, "InsuranceOption")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => ShippingDetailsType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ShippingDetailsType"),
    :schema_element => [
      ["getItFast", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "GetItFast")], [0, 1]],
      ["insuranceCost", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "InsuranceCost")], [0, 1]],
      ["insuranceOption", ["InsuranceOptionCodeType", XSD::QName.new(NsEBLBaseComponents, "InsuranceOption")], [0, 1]],
      ["internationalShippingServiceOption", ["InternationalShippingServiceOptionType[]", XSD::QName.new(NsEBLBaseComponents, "InternationalShippingServiceOption")], [0, nil]],
      ["salesTax", ["SalesTaxType", XSD::QName.new(NsEBLBaseComponents, "SalesTax")], [0, 1]],
      ["shippingRateErrorMessage", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "ShippingRateErrorMessage")], [0, 1]],
      ["shippingServiceOption", ["ShippingServiceOptionType[]", XSD::QName.new(NsEBLBaseComponents, "ShippingServiceOption")], [0, nil]],
      ["taxTable", ["TaxTableType", XSD::QName.new(NsEBLBaseComponents, "TaxTable")], [0, 1]],
      ["internationalInsuranceCost", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "InternationalInsuranceCost")], [0, 1]],
      ["internationalInsuranceOption", ["InsuranceOptionCodeType", XSD::QName.new(NsEBLBaseComponents, "InternationalInsuranceOption")], [0, 1]],
      ["cODCost", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "CODCost")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => ShippingServiceOptionType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ShippingServiceOptionType"),
    :schema_element => [
      ["shippingInsuranceCost", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "ShippingInsuranceCost")], [0, 1]],
      ["shippingServiceName", ["SOAP::SOAPToken", XSD::QName.new(NsEBLBaseComponents, "ShippingServiceName")], [0, 1]],
      ["shippingServiceCost", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "ShippingServiceCost")], [0, 1]],
      ["shippingServiceAdditionalCost", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "ShippingServiceAdditionalCost")], [0, 1]],
      ["shippingServicePriority", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "ShippingServicePriority")], [0, 1]],
      ["expeditedService", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "ExpeditedService")], [0, 1]],
      ["shippingTimeMin", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "ShippingTimeMin")], [0, 1]],
      ["shippingTimeMax", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "ShippingTimeMax")], [0, 1]],
      ["shippingSurcharge", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "ShippingSurcharge")], [0, 1]],
      ["shipsTo", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "ShipsTo")], [0, nil]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => SimpleItemArrayType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "SimpleItemArrayType"),
    :schema_element => [
      ["item", ["SimpleItemType[]", XSD::QName.new(NsEBLBaseComponents, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SimpleItemType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "SimpleItemType"),
    :schema_element => [
      ["bestOfferEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "BestOfferEnabled")], [0, 1]],
      ["buyItNowPrice", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "BuyItNowPrice")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Description")], [0, 1]],
      ["itemID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "ItemID")], [0, 1]],
      ["buyItNowAvailable", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "BuyItNowAvailable")], [0, 1]],
      ["convertedBuyItNowPrice", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "ConvertedBuyItNowPrice")], [0, 1]],
      ["endTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "EndTime")], [0, 1]],
      ["startTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "StartTime")], [0, 1]],
      ["viewItemURLForNaturalSearch", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "ViewItemURLForNaturalSearch")], [0, 1]],
      ["listingType", ["ListingTypeCodeType", XSD::QName.new(NsEBLBaseComponents, "ListingType")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Location")], [0, 1]],
      ["paymentMethods", ["BuyerPaymentMethodCodeType[]", XSD::QName.new(NsEBLBaseComponents, "PaymentMethods")], [0, nil]],
      ["galleryURL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "GalleryURL")], [0, 1]],
      ["pictureURL", ["SOAP::SOAPAnyURI[]", XSD::QName.new(NsEBLBaseComponents, "PictureURL")], [0, nil]],
      ["postalCode", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "PostalCode")], [0, 1]],
      ["primaryCategoryID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "PrimaryCategoryID")], [0, 1]],
      ["primaryCategoryName", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "PrimaryCategoryName")], [0, 1]],
      ["quantity", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "Quantity")], [0, 1]],
      ["seller", ["SimpleUserType", XSD::QName.new(NsEBLBaseComponents, "Seller")], [0, 1]],
      ["bidCount", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "BidCount")], [0, 1]],
      ["convertedCurrentPrice", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "ConvertedCurrentPrice")], [0, 1]],
      ["currentPrice", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "CurrentPrice")], [0, 1]],
      ["highBidder", ["SimpleUserType", XSD::QName.new(NsEBLBaseComponents, "HighBidder")], [0, 1]],
      ["listingStatus", ["ListingStatusCodeType", XSD::QName.new(NsEBLBaseComponents, "ListingStatus")], [0, 1]],
      ["quantitySold", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "QuantitySold")], [0, 1]],
      ["reserveMet", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "ReserveMet")], [0, 1]],
      ["shipToLocations", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "ShipToLocations")], [0, nil]],
      ["site", ["SiteCodeType", XSD::QName.new(NsEBLBaseComponents, "Site")], [0, 1]],
      ["timeLeft", ["SOAP::SOAPDuration", XSD::QName.new(NsEBLBaseComponents, "TimeLeft")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Title")], [0, 1]],
      ["shippingCostSummary", ["ShippingCostSummaryType", XSD::QName.new(NsEBLBaseComponents, "ShippingCostSummary")], [0, 1]],
      ["itemSpecifics", ["NameValueListArrayType", XSD::QName.new(NsEBLBaseComponents, "ItemSpecifics")], [0, 1]],
      ["hitCount", ["SOAP::SOAPLong", XSD::QName.new(NsEBLBaseComponents, "HitCount")], [0, 1]],
      ["subtitle", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Subtitle")], [0, 1]],
      ["primaryCategoryIDPath", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "PrimaryCategoryIDPath")], [0, 1]],
      ["secondaryCategoryID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "SecondaryCategoryID")], [0, 1]],
      ["secondaryCategoryName", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "SecondaryCategoryName")], [0, 1]],
      ["secondaryCategoryIDPath", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "SecondaryCategoryIDPath")], [0, 1]],
      ["charity", ["CharityType", XSD::QName.new(NsEBLBaseComponents, "Charity")], [0, 1]],
      ["germanMotorsSearchable", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "GermanMotorsSearchable")], [0, 1]],
      ["getItFast", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "GetItFast")], [0, 1]],
      ["gift", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "Gift")], [0, 1]],
      ["pictureExists", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "PictureExists")], [0, 1]],
      ["recentListing", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "RecentListing")], [0, 1]],
      ["storefront", ["StorefrontType", XSD::QName.new(NsEBLBaseComponents, "Storefront")], [0, 1]],
      ["distanceFromBuyer", ["DistanceType", XSD::QName.new(NsEBLBaseComponents, "DistanceFromBuyer")], [0, 1]],
      ["country", ["CountryCodeType", XSD::QName.new(NsEBLBaseComponents, "Country")], [0, 1]],
      ["watchCount", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "WatchCount")], [0, 1]],
      ["halfItemCondition", ["HalfItemConditionCodeType", XSD::QName.new(NsEBLBaseComponents, "HalfItemCondition")], [0, 1]],
      ["sellerComments", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "SellerComments")], [0, 1]],
      ["returnPolicy", ["ReturnPolicyType", XSD::QName.new(NsEBLBaseComponents, "ReturnPolicy")], [0, 1]],
      ["minimumToBid", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "MinimumToBid")], [0, 1]],
      ["productID", ["ProductIDType", XSD::QName.new(NsEBLBaseComponents, "ProductID")], [0, 1]],
      ["autoPay", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "AutoPay")], [0, 1]],
      ["businessSellerDetails", ["BusinessSellerDetailsType", XSD::QName.new(NsEBLBaseComponents, "BusinessSellerDetails")], [0, 1]],
      ["paymentAllowedSite", ["SiteCodeType[]", XSD::QName.new(NsEBLBaseComponents, "PaymentAllowedSite")], [0, nil]],
      ["integratedMerchantCreditCardEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "IntegratedMerchantCreditCardEnabled")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => SimpleUserType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "SimpleUserType"),
    :schema_element => [
      ["userID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "UserID")], [0, 1]],
      ["feedbackPrivate", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "FeedbackPrivate")], [0, 1]],
      ["feedbackRatingStar", ["FeedbackRatingStarCodeType", XSD::QName.new(NsEBLBaseComponents, "FeedbackRatingStar")], [0, 1]],
      ["feedbackScore", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "FeedbackScore")], [0, 1]],
      ["userAnonymized", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "UserAnonymized")], [0, 1]],
      ["newUser", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "NewUser")], [0, 1]],
      ["registrationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "RegistrationDate")], [0, 1]],
      ["registrationSite", ["SiteCodeType", XSD::QName.new(NsEBLBaseComponents, "RegistrationSite")], [0, 1]],
      ["status", ["UserStatusCodeType", XSD::QName.new(NsEBLBaseComponents, "Status")], [0, 1]],
      ["sellerBusinessType", ["SellerBusinessCodeType", XSD::QName.new(NsEBLBaseComponents, "SellerBusinessType")], [0, 1]],
      ["storeURL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "StoreURL")], [0, 1]],
      ["storeName", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "StoreName")], [0, 1]],
      ["sellerItemsURL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "SellerItemsURL")], [0, 1]],
      ["aboutMeURL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "AboutMeURL")], [0, 1]],
      ["myWorldURL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "MyWorldURL")], [0, 1]],
      ["myWorldSmallImage", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "MyWorldSmallImage")], [0, 1]],
      ["myWorldLargeImage", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "MyWorldLargeImage")], [0, 1]],
      ["reviewsAndGuidesURL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "ReviewsAndGuidesURL")], [0, 1]],
      ["feedbackDetailsURL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "FeedbackDetailsURL")], [0, 1]],
      ["positiveFeedbackPercent", ["SOAP::SOAPFloat", XSD::QName.new(NsEBLBaseComponents, "PositiveFeedbackPercent")], [0, 1]],
      ["sellerLevel", ["SellerLevelCodeType", XSD::QName.new(NsEBLBaseComponents, "SellerLevel")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => StorefrontType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "StorefrontType"),
    :schema_element => [
      ["storeURL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "StoreURL")], [0, 1]],
      ["storeName", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "StoreName")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => TaxJurisdictionType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "TaxJurisdictionType"),
    :schema_element => [
      ["jurisdictionID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "JurisdictionID")], [0, 1]],
      ["salesTaxPercent", ["SOAP::SOAPFloat", XSD::QName.new(NsEBLBaseComponents, "SalesTaxPercent")], [0, 1]],
      ["shippingIncludedInTax", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "ShippingIncludedInTax")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => TaxTableType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "TaxTableType"),
    :schema_element => [
      ["taxJurisdiction", ["TaxJurisdictionType[]", XSD::QName.new(NsEBLBaseComponents, "TaxJurisdiction")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => VATDetailsType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "VATDetailsType"),
    :schema_element => [
      ["businessSeller", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "BusinessSeller")], [0, 1]],
      ["restrictedToBusiness", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "RestrictedToBusiness")], [0, 1]],
      ["vATPercent", ["SOAP::SOAPFloat", XSD::QName.new(NsEBLBaseComponents, "VATPercent")], [0, 1]],
      ["vATSite", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "VATSite")], [0, 1]],
      ["vATID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "VATID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => AckCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "AckCodeType")
  )

  LiteralRegistry.register(
    :class => ErrorClassificationCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ErrorClassificationCodeType")
  )

  LiteralRegistry.register(
    :class => SeverityCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "SeverityCodeType")
  )

  LiteralRegistry.register(
    :class => BuyerPaymentMethodCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "BuyerPaymentMethodCodeType")
  )

  LiteralRegistry.register(
    :class => CharityStatusCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "CharityStatusCodeType")
  )

  LiteralRegistry.register(
    :class => CommentTypeCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "CommentTypeCodeType")
  )

  LiteralRegistry.register(
    :class => CountryCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "CountryCodeType")
  )

  LiteralRegistry.register(
    :class => CurrencyCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "CurrencyCodeType")
  )

  LiteralRegistry.register(
    :class => ExcludeFlagCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ExcludeFlagCodeType")
  )

  LiteralRegistry.register(
    :class => ExternalProductCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ExternalProductCodeType")
  )

  LiteralRegistry.register(
    :class => FeedbackRatingDetailCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "FeedbackRatingDetailCodeType")
  )

  LiteralRegistry.register(
    :class => FeedbackRatingStarCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "FeedbackRatingStarCodeType")
  )

  LiteralRegistry.register(
    :class => HalfItemConditionCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "HalfItemConditionCodeType")
  )

  LiteralRegistry.register(
    :class => InsuranceOptionCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "InsuranceOptionCodeType")
  )

  LiteralRegistry.register(
    :class => ItemConditionCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ItemConditionCodeType")
  )

  LiteralRegistry.register(
    :class => ItemLocationRegionCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ItemLocationRegionCodeType")
  )

  LiteralRegistry.register(
    :class => ItemTypeCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ItemTypeCodeType")
  )

  LiteralRegistry.register(
    :class => ListingStatusCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ListingStatusCodeType")
  )

  LiteralRegistry.register(
    :class => ListingTypeCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ListingTypeCodeType")
  )

  LiteralRegistry.register(
    :class => PaymentMethodSearchCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "PaymentMethodSearchCodeType")
  )

  LiteralRegistry.register(
    :class => PreferredLocationCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "PreferredLocationCodeType")
  )

  LiteralRegistry.register(
    :class => ProductIDCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ProductIDCodeType")
  )

  LiteralRegistry.register(
    :class => ProductSortCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ProductSortCodeType")
  )

  LiteralRegistry.register(
    :class => ProductStateCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ProductStateCodeType")
  )

  LiteralRegistry.register(
    :class => QuantityOperatorCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "QuantityOperatorCodeType")
  )

  LiteralRegistry.register(
    :class => ReviewSortCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ReviewSortCodeType")
  )

  LiteralRegistry.register(
    :class => SearchFlagCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "SearchFlagCodeType")
  )

  LiteralRegistry.register(
    :class => SellerBusinessCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "SellerBusinessCodeType")
  )

  LiteralRegistry.register(
    :class => SellerLevelCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "SellerLevelCodeType")
  )

  LiteralRegistry.register(
    :class => ShippingTypeCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "ShippingTypeCodeType")
  )

  LiteralRegistry.register(
    :class => SimpleItemSortCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "SimpleItemSortCodeType")
  )

  LiteralRegistry.register(
    :class => SiteCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "SiteCodeType")
  )

  LiteralRegistry.register(
    :class => SortOrderCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "SortOrderCodeType")
  )

  LiteralRegistry.register(
    :class => StoreSearchCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "StoreSearchCodeType")
  )

  LiteralRegistry.register(
    :class => TradingRoleCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "TradingRoleCodeType")
  )

  LiteralRegistry.register(
    :class => UserStatusCodeType,
    :schema_type => XSD::QName.new(NsEBLBaseComponents, "UserStatusCodeType")
  )

  LiteralRegistry.register(
    :class => FindHalfProductsRequestType,
    :schema_name => XSD::QName.new(NsEBLBaseComponents, "FindHalfProductsRequest"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["includeSelector", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "IncludeSelector")], [0, 1]],
      ["availableItemsOnly", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "AvailableItemsOnly")], [0, 1]],
      ["domainName", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "DomainName")], [0, nil]],
      ["productID", ["ProductIDType", XSD::QName.new(NsEBLBaseComponents, "ProductID")], [0, 1]],
      ["queryKeywords", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "QueryKeywords")], [0, 1]],
      ["sellerID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "SellerID")], [0, 1]],
      ["productSort", ["ProductSortCodeType", XSD::QName.new(NsEBLBaseComponents, "ProductSort")], [0, 1]],
      ["sortOrder", ["SortOrderCodeType", XSD::QName.new(NsEBLBaseComponents, "SortOrder")], [0, 1]],
      ["maxEntries", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "MaxEntries")], [0, 1]],
      ["pageNumber", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "PageNumber")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FindHalfProductsResponseType,
    :schema_name => XSD::QName.new(NsEBLBaseComponents, "FindHalfProductsResponse"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["domainHistogram", ["DomainHistogramType", XSD::QName.new(NsEBLBaseComponents, "DomainHistogram")], [0, 1]],
      ["pageNumber", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "PageNumber")], [0, 1]],
      ["approximatePages", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "ApproximatePages")], [0, 1]],
      ["moreResults", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "MoreResults")], [0, 1]],
      ["totalProducts", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "TotalProducts")], [0, 1]],
      ["products", ["HalfProductsType", XSD::QName.new(NsEBLBaseComponents, "Products")], [0, 1]],
      ["productSearchURL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "ProductSearchURL")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FindItemsAdvancedRequestType,
    :schema_name => XSD::QName.new(NsEBLBaseComponents, "FindItemsAdvancedRequest"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["includeSelector", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "IncludeSelector")], [0, 1]],
      ["bidCountMax", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "BidCountMax")], [0, 1]],
      ["bidCountMin", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "BidCountMin")], [0, 1]],
      ["categoryHistogramMaxParents", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "CategoryHistogramMaxParents")], [0, 1]],
      ["categoryHistogramMaxChildren", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "CategoryHistogramMaxChildren")], [0, 1]],
      ["queryKeywords", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "QueryKeywords")], [0, 1]],
      ["categoryID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryID")], [0, 1]],
      ["itemSort", ["SimpleItemSortCodeType", XSD::QName.new(NsEBLBaseComponents, "ItemSort")], [0, 1]],
      ["sortOrder", ["SortOrderCodeType", XSD::QName.new(NsEBLBaseComponents, "SortOrder")], [0, 1]],
      ["groupMaxEntries", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "GroupMaxEntries")], [0, 1]],
      ["groupsMax", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "GroupsMax")], [0, 1]],
      ["endTimeFrom", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "EndTimeFrom")], [0, 1]],
      ["endTimeTo", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "EndTimeTo")], [0, 1]],
      ["modTimeFrom", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "ModTimeFrom")], [0, 1]],
      ["sellerID", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "SellerID")], [0, nil]],
      ["sellerIDExclude", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "SellerIDExclude")], [0, nil]],
      ["itemType", ["ItemTypeCodeType", XSD::QName.new(NsEBLBaseComponents, "ItemType")], [0, 1]],
      ["maxDistance", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "MaxDistance")], [0, 1]],
      ["postalCode", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "PostalCode")], [0, 1]],
      ["productID", ["ProductIDType", XSD::QName.new(NsEBLBaseComponents, "ProductID")], [0, 1]],
      ["maxEntries", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "MaxEntries")], [0, 1]],
      ["pageNumber", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "PageNumber")], [0, 1]],
      ["priceMax", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "PriceMax")], [0, 1]],
      ["priceMin", ["AmountType", XSD::QName.new(NsEBLBaseComponents, "PriceMin")], [0, 1]],
      ["condition", ["ItemConditionCodeType", XSD::QName.new(NsEBLBaseComponents, "Condition")], [0, 1]],
      ["charityID", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "CharityID")], [0, 1]],
      ["searchFlag", ["SearchFlagCodeType[]", XSD::QName.new(NsEBLBaseComponents, "SearchFlag")], [0, nil]],
      ["paymentMethod", ["PaymentMethodSearchCodeType", XSD::QName.new(NsEBLBaseComponents, "PaymentMethod")], [0, 1]],
      ["storeName", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "StoreName")], [0, 1]],
      ["storeSearch", ["StoreSearchCodeType", XSD::QName.new(NsEBLBaseComponents, "StoreSearch")], [0, 1]],
      ["sellerBusinessType", ["SellerBusinessCodeType", XSD::QName.new(NsEBLBaseComponents, "SellerBusinessType")], [0, 1]],
      ["quantity", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "Quantity")], [0, 1]],
      ["quantityOperator", ["QuantityOperatorCodeType", XSD::QName.new(NsEBLBaseComponents, "QuantityOperator")], [0, 1]],
      ["currency", ["CurrencyCodeType", XSD::QName.new(NsEBLBaseComponents, "Currency")], [0, 1]],
      ["itemsAvailableTo", ["CountryCodeType", XSD::QName.new(NsEBLBaseComponents, "ItemsAvailableTo")], [0, 1]],
      ["itemsLocatedIn", ["CountryCodeType", XSD::QName.new(NsEBLBaseComponents, "ItemsLocatedIn")], [0, 1]],
      ["preferredLocation", ["PreferredLocationCodeType", XSD::QName.new(NsEBLBaseComponents, "PreferredLocation")], [0, 1]],
      ["feedbackScoreMax", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "FeedbackScoreMax")], [0, 1]],
      ["feedbackScoreMin", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "FeedbackScoreMin")], [0, 1]],
      ["excludeFlag", ["ExcludeFlagCodeType[]", XSD::QName.new(NsEBLBaseComponents, "ExcludeFlag")], [0, nil]],
      ["descriptionSearch", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "DescriptionSearch")], [0, 1]],
      ["hideDuplicateItems", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "HideDuplicateItems")], [0, 1]],
      ["shippingLocation", ["CountryCodeType", XSD::QName.new(NsEBLBaseComponents, "ShippingLocation")], [0, 1]],
      ["shippingPostalCode", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "ShippingPostalCode")], [0, 1]],
      ["itemLocationRegion", ["ItemLocationRegionCodeType", XSD::QName.new(NsEBLBaseComponents, "ItemLocationRegion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FindItemsAdvancedResponseType,
    :schema_name => XSD::QName.new(NsEBLBaseComponents, "FindItemsAdvancedResponse"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["searchResult", ["SearchResultType[]", XSD::QName.new(NsEBLBaseComponents, "SearchResult")], [0, nil]],
      ["pageNumber", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "PageNumber")], [0, 1]],
      ["totalPages", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "TotalPages")], [0, 1]],
      ["totalItems", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "TotalItems")], [0, 1]],
      ["categoryHistogram", ["CategoryArrayType", XSD::QName.new(NsEBLBaseComponents, "CategoryHistogram")], [0, 1]],
      ["totalStoresExpansionItems", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "TotalStoresExpansionItems")], [0, 1]],
      ["totalInternationalExpansionItems", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "TotalInternationalExpansionItems")], [0, 1]],
      ["itemSearchURL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "ItemSearchURL")], [0, 1]],
      ["duplicateItems", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "DuplicateItems")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FindItemsRequestType,
    :schema_name => XSD::QName.new(NsEBLBaseComponents, "FindItemsRequest"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["queryKeywords", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "QueryKeywords")], [0, 1]],
      ["itemSort", ["SimpleItemSortCodeType", XSD::QName.new(NsEBLBaseComponents, "ItemSort")], [0, 1]],
      ["sortOrder", ["SortOrderCodeType", XSD::QName.new(NsEBLBaseComponents, "SortOrder")], [0, 1]],
      ["maxEntries", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "MaxEntries")], [0, 1]],
      ["postalCode", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "PostalCode")], [0, 1]],
      ["sellerID", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "SellerID")], [0, nil]],
      ["sellerIDExclude", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "SellerIDExclude")], [0, nil]],
      ["hideDuplicateItems", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "HideDuplicateItems")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FindItemsResponseType,
    :schema_name => XSD::QName.new(NsEBLBaseComponents, "FindItemsResponse"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["item", ["SimpleItemType[]", XSD::QName.new(NsEBLBaseComponents, "Item")], [0, nil]],
      ["totalItems", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "TotalItems")], [0, 1]],
      ["itemSearchURL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "ItemSearchURL")], [0, 1]],
      ["duplicateItems", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "DuplicateItems")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FindPopularItemsRequestType,
    :schema_name => XSD::QName.new(NsEBLBaseComponents, "FindPopularItemsRequest"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["categoryID", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "CategoryID")], [0, nil]],
      ["queryKeywords", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "QueryKeywords")], [0, 1]],
      ["categoryIDExclude", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "CategoryIDExclude")], [0, nil]],
      ["maxEntries", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "MaxEntries")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FindPopularItemsResponseType,
    :schema_name => XSD::QName.new(NsEBLBaseComponents, "FindPopularItemsResponse"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["itemArray", ["SimpleItemArrayType", XSD::QName.new(NsEBLBaseComponents, "ItemArray")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FindPopularSearchesRequestType,
    :schema_name => XSD::QName.new(NsEBLBaseComponents, "FindPopularSearchesRequest"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["categoryID", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "CategoryID")], [0, nil]],
      ["queryKeywords", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "QueryKeywords")], [0, nil]],
      ["maxKeywords", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "MaxKeywords")], [0, 1]],
      ["maxResultsPerPage", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "MaxResultsPerPage")], [0, 1]],
      ["pageNumber", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "PageNumber")], [0, 1]],
      ["includeChildCategories", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "IncludeChildCategories")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FindPopularSearchesResponseType,
    :schema_name => XSD::QName.new(NsEBLBaseComponents, "FindPopularSearchesResponse"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["popularSearchResult", ["PopularSearchesType[]", XSD::QName.new(NsEBLBaseComponents, "PopularSearchResult")], [0, nil]],
      ["pageNumber", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "PageNumber")], [0, 1]],
      ["totalPages", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "TotalPages")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FindProductsRequestType,
    :schema_name => XSD::QName.new(NsEBLBaseComponents, "FindProductsRequest"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["includeSelector", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "IncludeSelector")], [0, 1]],
      ["availableItemsOnly", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "AvailableItemsOnly")], [0, 1]],
      ["domainName", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "DomainName")], [0, nil]],
      ["productID", ["ProductIDType", XSD::QName.new(NsEBLBaseComponents, "ProductID")], [0, 1]],
      ["queryKeywords", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "QueryKeywords")], [0, 1]],
      ["productSort", ["ProductSortCodeType", XSD::QName.new(NsEBLBaseComponents, "ProductSort")], [0, 1]],
      ["sortOrder", ["SortOrderCodeType", XSD::QName.new(NsEBLBaseComponents, "SortOrder")], [0, 1]],
      ["maxEntries", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "MaxEntries")], [0, 1]],
      ["pageNumber", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "PageNumber")], [0, 1]],
      ["categoryID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryID")], [0, 1]],
      ["hideDuplicateItems", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "HideDuplicateItems")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FindProductsResponseType,
    :schema_name => XSD::QName.new(NsEBLBaseComponents, "FindProductsResponse"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["approximatePages", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "ApproximatePages")], [0, 1]],
      ["moreResults", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "MoreResults")], [0, 1]],
      ["domainHistogram", ["DomainHistogramType", XSD::QName.new(NsEBLBaseComponents, "DomainHistogram")], [0, 1]],
      ["itemArray", ["SimpleItemArrayType", XSD::QName.new(NsEBLBaseComponents, "ItemArray")], [0, 1]],
      ["pageNumber", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "PageNumber")], [0, 1]],
      ["product", ["CatalogProductType[]", XSD::QName.new(NsEBLBaseComponents, "Product")], [0, nil]],
      ["totalProducts", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "TotalProducts")], [0, 1]],
      ["duplicateItems", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "DuplicateItems")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FindReviewsAndGuidesRequestType,
    :schema_name => XSD::QName.new(NsEBLBaseComponents, "FindReviewsAndGuidesRequest"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["productID", ["ProductIDType", XSD::QName.new(NsEBLBaseComponents, "ProductID")], [0, 1]],
      ["userID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "UserID")], [0, 1]],
      ["categoryID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryID")], [0, 1]],
      ["maxResultsPerPage", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "MaxResultsPerPage")], [0, 1]],
      ["pageNumber", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "PageNumber")], [0, 1]],
      ["reviewSort", ["ReviewSortCodeType", XSD::QName.new(NsEBLBaseComponents, "ReviewSort")], [0, 1]],
      ["sortOrder", ["SortOrderCodeType", XSD::QName.new(NsEBLBaseComponents, "SortOrder")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FindReviewsAndGuidesResponseType,
    :schema_name => XSD::QName.new(NsEBLBaseComponents, "FindReviewsAndGuidesResponse"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["reviewCount", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "ReviewCount")], [0, 1]],
      ["buyingGuideCount", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "BuyingGuideCount")], [0, 1]],
      ["reviewerRank", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "ReviewerRank")], [0, 1]],
      ["totalHelpfulnessVotes", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "TotalHelpfulnessVotes")], [0, 1]],
      ["productID", ["ProductIDType", XSD::QName.new(NsEBLBaseComponents, "ProductID")], [0, 1]],
      ["reviewsAndGuidesURL", ["SOAP::SOAPAnyURI", XSD::QName.new(NsEBLBaseComponents, "ReviewsAndGuidesURL")], [0, 1]],
      ["pageNumber", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "PageNumber")], [0, 1]],
      ["totalPages", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "TotalPages")], [0, 1]],
      ["buyingGuideDetails", ["BuyingGuideDetailsType", XSD::QName.new(NsEBLBaseComponents, "BuyingGuideDetails")], [0, 1]],
      ["reviewDetails", ["ReviewDetailsType", XSD::QName.new(NsEBLBaseComponents, "ReviewDetails")], [0, 1]],
      ["positiveHelpfulnessVotes", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "PositiveHelpfulnessVotes")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCategoryInfoRequestType,
    :schema_name => XSD::QName.new(NsEBLBaseComponents, "GetCategoryInfoRequest"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["categoryID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryID")], [0, 1]],
      ["includeSelector", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "IncludeSelector")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCategoryInfoResponseType,
    :schema_name => XSD::QName.new(NsEBLBaseComponents, "GetCategoryInfoResponse"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["categoryArray", ["CategoryArrayType", XSD::QName.new(NsEBLBaseComponents, "CategoryArray")], [0, 1]],
      ["categoryCount", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "CategoryCount")], [0, 1]],
      ["updateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "UpdateTime")], [0, 1]],
      ["categoryVersion", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CategoryVersion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetItemStatusRequestType,
    :schema_name => XSD::QName.new(NsEBLBaseComponents, "GetItemStatusRequest"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["itemID", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "ItemID")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GetItemStatusResponseType,
    :schema_name => XSD::QName.new(NsEBLBaseComponents, "GetItemStatusResponse"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["item", ["SimpleItemType[]", XSD::QName.new(NsEBLBaseComponents, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GetMultipleItemsRequestType,
    :schema_name => XSD::QName.new(NsEBLBaseComponents, "GetMultipleItemsRequest"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["itemID", ["SOAP::SOAPString[]", XSD::QName.new(NsEBLBaseComponents, "ItemID")], [0, nil]],
      ["includeSelector", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "IncludeSelector")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetMultipleItemsResponseType,
    :schema_name => XSD::QName.new(NsEBLBaseComponents, "GetMultipleItemsResponse"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["item", ["SimpleItemType[]", XSD::QName.new(NsEBLBaseComponents, "Item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GetShippingCostsRequestType,
    :schema_name => XSD::QName.new(NsEBLBaseComponents, "GetShippingCostsRequest"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["itemID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "ItemID")], [0, 1]],
      ["quantitySold", ["SOAP::SOAPInt", XSD::QName.new(NsEBLBaseComponents, "QuantitySold")], [0, 1]],
      ["destinationPostalCode", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "DestinationPostalCode")], [0, 1]],
      ["destinationCountryCode", ["CountryCodeType", XSD::QName.new(NsEBLBaseComponents, "DestinationCountryCode")], [0, 1]],
      ["includeDetails", ["SOAP::SOAPBoolean", XSD::QName.new(NsEBLBaseComponents, "IncludeDetails")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetShippingCostsResponseType,
    :schema_name => XSD::QName.new(NsEBLBaseComponents, "GetShippingCostsResponse"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["shippingDetails", ["ShippingDetailsType", XSD::QName.new(NsEBLBaseComponents, "ShippingDetails")], [0, 1]],
      ["shippingCostSummary", ["ShippingCostSummaryType", XSD::QName.new(NsEBLBaseComponents, "ShippingCostSummary")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetSingleItemRequestType,
    :schema_name => XSD::QName.new(NsEBLBaseComponents, "GetSingleItemRequest"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["itemID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "ItemID")], [0, 1]],
      ["includeSelector", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "IncludeSelector")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetSingleItemResponseType,
    :schema_name => XSD::QName.new(NsEBLBaseComponents, "GetSingleItemResponse"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["item", ["SimpleItemType", XSD::QName.new(NsEBLBaseComponents, "Item")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetUserProfileRequestType,
    :schema_name => XSD::QName.new(NsEBLBaseComponents, "GetUserProfileRequest"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["userID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "UserID")], [0, 1]],
      ["includeSelector", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "IncludeSelector")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetUserProfileResponseType,
    :schema_name => XSD::QName.new(NsEBLBaseComponents, "GetUserProfileResponse"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]],
      ["user", ["SimpleUserType", XSD::QName.new(NsEBLBaseComponents, "User")], [0, 1]],
      ["feedbackHistory", ["FeedbackHistoryType", XSD::QName.new(NsEBLBaseComponents, "FeedbackHistory")], [0, 1]],
      ["feedbackDetails", ["FeedbackDetailType[]", XSD::QName.new(NsEBLBaseComponents, "FeedbackDetails")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GeteBayTimeRequestType,
    :schema_name => XSD::QName.new(NsEBLBaseComponents, "GeteBayTimeRequest"),
    :schema_element => [
      ["messageID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "MessageID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GeteBayTimeResponseType,
    :schema_name => XSD::QName.new(NsEBLBaseComponents, "GeteBayTimeResponse"),
    :schema_element => [
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsEBLBaseComponents, "Timestamp")], [0, 1]],
      ["ack", ["AckCodeType", XSD::QName.new(NsEBLBaseComponents, "Ack")], [0, 1]],
      ["errors", ["ErrorType[]", XSD::QName.new(NsEBLBaseComponents, "Errors")], [0, nil]],
      ["build", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Build")], [0, 1]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "Version")], [0, 1]],
      ["correlationID", ["SOAP::SOAPString", XSD::QName.new(NsEBLBaseComponents, "CorrelationID")], [0, 1]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )
end
