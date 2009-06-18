require 'xsd/qname'

# {urn:ebay:apis:eBLBaseComponents}AbstractRequestType
# abstract
#   messageID - SOAP::SOAPString
class AbstractRequestType #:nodoc: 
  attr_accessor :messageID
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(messageID = nil)
    @messageID = messageID
    @__xmlele_any = nil
  end
end

# {urn:ebay:apis:eBLBaseComponents}FindHalfProductsRequestType
#   messageID - SOAP::SOAPString
#   includeSelector - SOAP::SOAPString
#   availableItemsOnly - SOAP::SOAPBoolean
#   domainName - SOAP::SOAPString
#   productID - ProductIDType
#   queryKeywords - SOAP::SOAPString
#   sellerID - SOAP::SOAPString
#   productSort - ProductSortCodeType
#   sortOrder - SortOrderCodeType
#   maxEntries - SOAP::SOAPInt
#   pageNumber - SOAP::SOAPInt
class FindHalfProductsRequestType < AbstractRequestType #:nodoc: 
  attr_accessor :messageID
  attr_reader :__xmlele_any
  attr_accessor :includeSelector
  attr_accessor :availableItemsOnly
  attr_accessor :domainName
  attr_accessor :productID
  attr_accessor :queryKeywords
  attr_accessor :sellerID
  attr_accessor :productSort
  attr_accessor :sortOrder
  attr_accessor :maxEntries
  attr_accessor :pageNumber

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(messageID = nil, includeSelector = nil, availableItemsOnly = nil, domainName = [], productID = nil, queryKeywords = nil, sellerID = nil, productSort = nil, sortOrder = nil, maxEntries = nil, pageNumber = nil)
    @messageID = messageID
    @__xmlele_any = nil
    @includeSelector = includeSelector
    @availableItemsOnly = availableItemsOnly
    @domainName = domainName
    @productID = productID
    @queryKeywords = queryKeywords
    @sellerID = sellerID
    @productSort = productSort
    @sortOrder = sortOrder
    @maxEntries = maxEntries
    @pageNumber = pageNumber
  end
end

# {urn:ebay:apis:eBLBaseComponents}FindItemsAdvancedRequestType
#   messageID - SOAP::SOAPString
#   includeSelector - SOAP::SOAPString
#   bidCountMax - SOAP::SOAPInt
#   bidCountMin - SOAP::SOAPInt
#   categoryHistogramMaxParents - SOAP::SOAPInt
#   categoryHistogramMaxChildren - SOAP::SOAPInt
#   queryKeywords - SOAP::SOAPString
#   categoryID - SOAP::SOAPString
#   itemSort - SimpleItemSortCodeType
#   sortOrder - SortOrderCodeType
#   groupMaxEntries - SOAP::SOAPInt
#   groupsMax - SOAP::SOAPInt
#   endTimeFrom - SOAP::SOAPDateTime
#   endTimeTo - SOAP::SOAPDateTime
#   modTimeFrom - SOAP::SOAPDateTime
#   sellerID - SOAP::SOAPString
#   sellerIDExclude - SOAP::SOAPString
#   itemType - ItemTypeCodeType
#   maxDistance - SOAP::SOAPInt
#   postalCode - SOAP::SOAPString
#   productID - ProductIDType
#   maxEntries - SOAP::SOAPInt
#   pageNumber - SOAP::SOAPInt
#   priceMax - AmountType
#   priceMin - AmountType
#   condition - ItemConditionCodeType
#   charityID - SOAP::SOAPInt
#   searchFlag - SearchFlagCodeType
#   paymentMethod - PaymentMethodSearchCodeType
#   storeName - SOAP::SOAPString
#   storeSearch - StoreSearchCodeType
#   sellerBusinessType - SellerBusinessCodeType
#   quantity - SOAP::SOAPInt
#   quantityOperator - QuantityOperatorCodeType
#   currency - CurrencyCodeType
#   itemsAvailableTo - CountryCodeType
#   itemsLocatedIn - CountryCodeType
#   preferredLocation - PreferredLocationCodeType
#   feedbackScoreMax - SOAP::SOAPInt
#   feedbackScoreMin - SOAP::SOAPInt
#   excludeFlag - ExcludeFlagCodeType
#   descriptionSearch - SOAP::SOAPBoolean
#   hideDuplicateItems - SOAP::SOAPBoolean
#   shippingLocation - CountryCodeType
#   shippingPostalCode - SOAP::SOAPString
#   itemLocationRegion - ItemLocationRegionCodeType
class FindItemsAdvancedRequestType < AbstractRequestType #:nodoc: 
  attr_accessor :messageID
  attr_reader :__xmlele_any
  attr_accessor :includeSelector
  attr_accessor :bidCountMax
  attr_accessor :bidCountMin
  attr_accessor :categoryHistogramMaxParents
  attr_accessor :categoryHistogramMaxChildren
  attr_accessor :queryKeywords
  attr_accessor :categoryID
  attr_accessor :itemSort
  attr_accessor :sortOrder
  attr_accessor :groupMaxEntries
  attr_accessor :groupsMax
  attr_accessor :endTimeFrom
  attr_accessor :endTimeTo
  attr_accessor :modTimeFrom
  attr_accessor :sellerID
  attr_accessor :sellerIDExclude
  attr_accessor :itemType
  attr_accessor :maxDistance
  attr_accessor :postalCode
  attr_accessor :productID
  attr_accessor :maxEntries
  attr_accessor :pageNumber
  attr_accessor :priceMax
  attr_accessor :priceMin
  attr_accessor :condition
  attr_accessor :charityID
  attr_accessor :searchFlag
  attr_accessor :paymentMethod
  attr_accessor :storeName
  attr_accessor :storeSearch
  attr_accessor :sellerBusinessType
  attr_accessor :quantity
  attr_accessor :quantityOperator
  attr_accessor :currency
  attr_accessor :itemsAvailableTo
  attr_accessor :itemsLocatedIn
  attr_accessor :preferredLocation
  attr_accessor :feedbackScoreMax
  attr_accessor :feedbackScoreMin
  attr_accessor :excludeFlag
  attr_accessor :descriptionSearch
  attr_accessor :hideDuplicateItems
  attr_accessor :shippingLocation
  attr_accessor :shippingPostalCode
  attr_accessor :itemLocationRegion

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(messageID = nil, includeSelector = nil, bidCountMax = nil, bidCountMin = nil, categoryHistogramMaxParents = nil, categoryHistogramMaxChildren = nil, queryKeywords = nil, categoryID = nil, itemSort = nil, sortOrder = nil, groupMaxEntries = nil, groupsMax = nil, endTimeFrom = nil, endTimeTo = nil, modTimeFrom = nil, sellerID = [], sellerIDExclude = [], itemType = nil, maxDistance = nil, postalCode = nil, productID = nil, maxEntries = nil, pageNumber = nil, priceMax = nil, priceMin = nil, condition = nil, charityID = nil, searchFlag = [], paymentMethod = nil, storeName = nil, storeSearch = nil, sellerBusinessType = nil, quantity = nil, quantityOperator = nil, currency = nil, itemsAvailableTo = nil, itemsLocatedIn = nil, preferredLocation = nil, feedbackScoreMax = nil, feedbackScoreMin = nil, excludeFlag = [], descriptionSearch = nil, hideDuplicateItems = nil, shippingLocation = nil, shippingPostalCode = nil, itemLocationRegion = nil)
    @messageID = messageID
    @__xmlele_any = nil
    @includeSelector = includeSelector
    @bidCountMax = bidCountMax
    @bidCountMin = bidCountMin
    @categoryHistogramMaxParents = categoryHistogramMaxParents
    @categoryHistogramMaxChildren = categoryHistogramMaxChildren
    @queryKeywords = queryKeywords
    @categoryID = categoryID
    @itemSort = itemSort
    @sortOrder = sortOrder
    @groupMaxEntries = groupMaxEntries
    @groupsMax = groupsMax
    @endTimeFrom = endTimeFrom
    @endTimeTo = endTimeTo
    @modTimeFrom = modTimeFrom
    @sellerID = sellerID
    @sellerIDExclude = sellerIDExclude
    @itemType = itemType
    @maxDistance = maxDistance
    @postalCode = postalCode
    @productID = productID
    @maxEntries = maxEntries
    @pageNumber = pageNumber
    @priceMax = priceMax
    @priceMin = priceMin
    @condition = condition
    @charityID = charityID
    @searchFlag = searchFlag
    @paymentMethod = paymentMethod
    @storeName = storeName
    @storeSearch = storeSearch
    @sellerBusinessType = sellerBusinessType
    @quantity = quantity
    @quantityOperator = quantityOperator
    @currency = currency
    @itemsAvailableTo = itemsAvailableTo
    @itemsLocatedIn = itemsLocatedIn
    @preferredLocation = preferredLocation
    @feedbackScoreMax = feedbackScoreMax
    @feedbackScoreMin = feedbackScoreMin
    @excludeFlag = excludeFlag
    @descriptionSearch = descriptionSearch
    @hideDuplicateItems = hideDuplicateItems
    @shippingLocation = shippingLocation
    @shippingPostalCode = shippingPostalCode
    @itemLocationRegion = itemLocationRegion
  end
end

# {urn:ebay:apis:eBLBaseComponents}FindItemsRequestType
#   messageID - SOAP::SOAPString
#   queryKeywords - SOAP::SOAPString
#   itemSort - SimpleItemSortCodeType
#   sortOrder - SortOrderCodeType
#   maxEntries - SOAP::SOAPInt
#   postalCode - SOAP::SOAPString
#   sellerID - SOAP::SOAPString
#   sellerIDExclude - SOAP::SOAPString
#   hideDuplicateItems - SOAP::SOAPBoolean
class FindItemsRequestType < AbstractRequestType #:nodoc: 
  attr_accessor :messageID
  attr_reader :__xmlele_any
  attr_accessor :queryKeywords
  attr_accessor :itemSort
  attr_accessor :sortOrder
  attr_accessor :maxEntries
  attr_accessor :postalCode
  attr_accessor :sellerID
  attr_accessor :sellerIDExclude
  attr_accessor :hideDuplicateItems

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(messageID = nil, queryKeywords = nil, itemSort = nil, sortOrder = nil, maxEntries = nil, postalCode = nil, sellerID = [], sellerIDExclude = [], hideDuplicateItems = nil)
    @messageID = messageID
    @__xmlele_any = nil
    @queryKeywords = queryKeywords
    @itemSort = itemSort
    @sortOrder = sortOrder
    @maxEntries = maxEntries
    @postalCode = postalCode
    @sellerID = sellerID
    @sellerIDExclude = sellerIDExclude
    @hideDuplicateItems = hideDuplicateItems
  end
end

# {urn:ebay:apis:eBLBaseComponents}FindPopularItemsRequestType
#   messageID - SOAP::SOAPString
#   categoryID - SOAP::SOAPString
#   queryKeywords - SOAP::SOAPString
#   categoryIDExclude - SOAP::SOAPString
#   maxEntries - SOAP::SOAPInt
class FindPopularItemsRequestType < AbstractRequestType #:nodoc: 
  attr_accessor :messageID
  attr_reader :__xmlele_any
  attr_accessor :categoryID
  attr_accessor :queryKeywords
  attr_accessor :categoryIDExclude
  attr_accessor :maxEntries

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(messageID = nil, categoryID = [], queryKeywords = nil, categoryIDExclude = [], maxEntries = nil)
    @messageID = messageID
    @__xmlele_any = nil
    @categoryID = categoryID
    @queryKeywords = queryKeywords
    @categoryIDExclude = categoryIDExclude
    @maxEntries = maxEntries
  end
end

# {urn:ebay:apis:eBLBaseComponents}FindPopularSearchesRequestType
#   messageID - SOAP::SOAPString
#   categoryID - SOAP::SOAPString
#   queryKeywords - SOAP::SOAPString
#   maxKeywords - SOAP::SOAPInt
#   maxResultsPerPage - SOAP::SOAPInt
#   pageNumber - SOAP::SOAPInt
#   includeChildCategories - SOAP::SOAPBoolean
class FindPopularSearchesRequestType < AbstractRequestType #:nodoc: 
  attr_accessor :messageID
  attr_reader :__xmlele_any
  attr_accessor :categoryID
  attr_accessor :queryKeywords
  attr_accessor :maxKeywords
  attr_accessor :maxResultsPerPage
  attr_accessor :pageNumber
  attr_accessor :includeChildCategories

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(messageID = nil, categoryID = [], queryKeywords = [], maxKeywords = nil, maxResultsPerPage = nil, pageNumber = nil, includeChildCategories = nil)
    @messageID = messageID
    @__xmlele_any = nil
    @categoryID = categoryID
    @queryKeywords = queryKeywords
    @maxKeywords = maxKeywords
    @maxResultsPerPage = maxResultsPerPage
    @pageNumber = pageNumber
    @includeChildCategories = includeChildCategories
  end
end

# {urn:ebay:apis:eBLBaseComponents}FindProductsRequestType
#   messageID - SOAP::SOAPString
#   includeSelector - SOAP::SOAPString
#   availableItemsOnly - SOAP::SOAPBoolean
#   domainName - SOAP::SOAPString
#   productID - ProductIDType
#   queryKeywords - SOAP::SOAPString
#   productSort - ProductSortCodeType
#   sortOrder - SortOrderCodeType
#   maxEntries - SOAP::SOAPInt
#   pageNumber - SOAP::SOAPInt
#   categoryID - SOAP::SOAPString
#   hideDuplicateItems - SOAP::SOAPBoolean
class FindProductsRequestType < AbstractRequestType #:nodoc: 
  attr_accessor :messageID
  attr_reader :__xmlele_any
  attr_accessor :includeSelector
  attr_accessor :availableItemsOnly
  attr_accessor :domainName
  attr_accessor :productID
  attr_accessor :queryKeywords
  attr_accessor :productSort
  attr_accessor :sortOrder
  attr_accessor :maxEntries
  attr_accessor :pageNumber
  attr_accessor :categoryID
  attr_accessor :hideDuplicateItems

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(messageID = nil, includeSelector = nil, availableItemsOnly = nil, domainName = [], productID = nil, queryKeywords = nil, productSort = nil, sortOrder = nil, maxEntries = nil, pageNumber = nil, categoryID = nil, hideDuplicateItems = nil)
    @messageID = messageID
    @__xmlele_any = nil
    @includeSelector = includeSelector
    @availableItemsOnly = availableItemsOnly
    @domainName = domainName
    @productID = productID
    @queryKeywords = queryKeywords
    @productSort = productSort
    @sortOrder = sortOrder
    @maxEntries = maxEntries
    @pageNumber = pageNumber
    @categoryID = categoryID
    @hideDuplicateItems = hideDuplicateItems
  end
end

# {urn:ebay:apis:eBLBaseComponents}FindReviewsAndGuidesRequestType
#   messageID - SOAP::SOAPString
#   productID - ProductIDType
#   userID - SOAP::SOAPString
#   categoryID - SOAP::SOAPString
#   maxResultsPerPage - SOAP::SOAPInt
#   pageNumber - SOAP::SOAPInt
#   reviewSort - ReviewSortCodeType
#   sortOrder - SortOrderCodeType
class FindReviewsAndGuidesRequestType < AbstractRequestType #:nodoc: 
  attr_accessor :messageID
  attr_reader :__xmlele_any
  attr_accessor :productID
  attr_accessor :userID
  attr_accessor :categoryID
  attr_accessor :maxResultsPerPage
  attr_accessor :pageNumber
  attr_accessor :reviewSort
  attr_accessor :sortOrder

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(messageID = nil, productID = nil, userID = nil, categoryID = nil, maxResultsPerPage = nil, pageNumber = nil, reviewSort = nil, sortOrder = nil)
    @messageID = messageID
    @__xmlele_any = nil
    @productID = productID
    @userID = userID
    @categoryID = categoryID
    @maxResultsPerPage = maxResultsPerPage
    @pageNumber = pageNumber
    @reviewSort = reviewSort
    @sortOrder = sortOrder
  end
end

# {urn:ebay:apis:eBLBaseComponents}GetCategoryInfoRequestType
#   messageID - SOAP::SOAPString
#   categoryID - SOAP::SOAPString
#   includeSelector - SOAP::SOAPString
class GetCategoryInfoRequestType < AbstractRequestType #:nodoc:
  attr_accessor :messageID
  attr_reader :__xmlele_any
  attr_accessor :categoryID
  attr_accessor :includeSelector

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(messageID = nil, categoryID = nil, includeSelector = nil)
    @messageID = messageID
    @__xmlele_any = nil
    @categoryID = categoryID
    @includeSelector = includeSelector
  end
end

# {urn:ebay:apis:eBLBaseComponents}GetItemStatusRequestType
#   messageID - SOAP::SOAPString
#   itemID - SOAP::SOAPString
class GetItemStatusRequestType < AbstractRequestType #:nodoc:
  attr_accessor :messageID
  attr_reader :__xmlele_any
  attr_accessor :itemID

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(messageID = nil, itemID = [])
    @messageID = messageID
    @__xmlele_any = nil
    @itemID = itemID
  end
end

# {urn:ebay:apis:eBLBaseComponents}GetMultipleItemsRequestType
#   messageID - SOAP::SOAPString
#   itemID - SOAP::SOAPString
#   includeSelector - SOAP::SOAPString
class GetMultipleItemsRequestType < AbstractRequestType #:nodoc:
  attr_accessor :messageID
  attr_reader :__xmlele_any
  attr_accessor :itemID
  attr_accessor :includeSelector

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(messageID = nil, itemID = [], includeSelector = nil)
    @messageID = messageID
    @__xmlele_any = nil
    @itemID = itemID
    @includeSelector = includeSelector
  end
end

# {urn:ebay:apis:eBLBaseComponents}GetShippingCostsRequestType
#   messageID - SOAP::SOAPString
#   itemID - SOAP::SOAPString
#   quantitySold - SOAP::SOAPInt
#   destinationPostalCode - SOAP::SOAPString
#   destinationCountryCode - CountryCodeType
#   includeDetails - SOAP::SOAPBoolean
class GetShippingCostsRequestType < AbstractRequestType #:nodoc:
  attr_accessor :messageID
  attr_reader :__xmlele_any
  attr_accessor :itemID
  attr_accessor :quantitySold
  attr_accessor :destinationPostalCode
  attr_accessor :destinationCountryCode
  attr_accessor :includeDetails

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(messageID = nil, itemID = nil, quantitySold = nil, destinationPostalCode = nil, destinationCountryCode = nil, includeDetails = nil)
    @messageID = messageID
    @__xmlele_any = nil
    @itemID = itemID
    @quantitySold = quantitySold
    @destinationPostalCode = destinationPostalCode
    @destinationCountryCode = destinationCountryCode
    @includeDetails = includeDetails
  end
end

# {urn:ebay:apis:eBLBaseComponents}GetSingleItemRequestType
#   messageID - SOAP::SOAPString
#   itemID - SOAP::SOAPString
#   includeSelector - SOAP::SOAPString
class GetSingleItemRequestType < AbstractRequestType #:nodoc:
  attr_accessor :messageID
  attr_reader :__xmlele_any
  attr_accessor :itemID
  attr_accessor :includeSelector

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(messageID = nil, itemID = nil, includeSelector = nil)
    @messageID = messageID
    @__xmlele_any = nil
    @itemID = itemID
    @includeSelector = includeSelector
  end
end

# {urn:ebay:apis:eBLBaseComponents}GetUserProfileRequestType
#   messageID - SOAP::SOAPString
#   userID - SOAP::SOAPString
#   includeSelector - SOAP::SOAPString
class GetUserProfileRequestType < AbstractRequestType #:nodoc:
  attr_accessor :messageID
  attr_reader :__xmlele_any
  attr_accessor :userID
  attr_accessor :includeSelector

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(messageID = nil, userID = nil, includeSelector = nil)
    @messageID = messageID
    @__xmlele_any = nil
    @userID = userID
    @includeSelector = includeSelector
  end
end

# {urn:ebay:apis:eBLBaseComponents}GeteBayTimeRequestType
#   messageID - SOAP::SOAPString
class GeteBayTimeRequestType < AbstractRequestType #:nodoc:
  attr_accessor :messageID
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(messageID = nil)
    @messageID = messageID
    @__xmlele_any = nil
  end
end

# {urn:ebay:apis:eBLBaseComponents}AbstractResponseType
# abstract
#   timestamp - SOAP::SOAPDateTime
#   ack - AckCodeType
#   errors - ErrorType
#   build - SOAP::SOAPString
#   version - SOAP::SOAPString
#   correlationID - SOAP::SOAPString
class AbstractResponseType #:nodoc:
  attr_accessor :timestamp
  attr_accessor :ack
  attr_accessor :errors
  attr_accessor :build
  attr_accessor :version
  attr_accessor :correlationID
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(timestamp = nil, ack = nil, errors = [], build = nil, version = nil, correlationID = nil)
    @timestamp = timestamp
    @ack = ack
    @errors = errors
    @build = build
    @version = version
    @correlationID = correlationID
    @__xmlele_any = nil
  end
end

# {urn:ebay:apis:eBLBaseComponents}FindHalfProductsResponseType
#   timestamp - SOAP::SOAPDateTime
#   ack - AckCodeType
#   errors - ErrorType
#   build - SOAP::SOAPString
#   version - SOAP::SOAPString
#   correlationID - SOAP::SOAPString
#   domainHistogram - DomainHistogramType
#   pageNumber - SOAP::SOAPInt
#   approximatePages - SOAP::SOAPInt
#   moreResults - SOAP::SOAPBoolean
#   totalProducts - SOAP::SOAPInt
#   products - HalfProductsType
#   productSearchURL - SOAP::SOAPAnyURI
class FindHalfProductsResponseType < AbstractResponseType #:nodoc:
  attr_accessor :timestamp
  attr_accessor :ack
  attr_accessor :errors
  attr_accessor :build
  attr_accessor :version
  attr_accessor :correlationID
  attr_reader :__xmlele_any
  attr_accessor :domainHistogram
  attr_accessor :pageNumber
  attr_accessor :approximatePages
  attr_accessor :moreResults
  attr_accessor :totalProducts
  attr_accessor :products
  attr_accessor :productSearchURL

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(timestamp = nil, ack = nil, errors = [], build = nil, version = nil, correlationID = nil, domainHistogram = nil, pageNumber = nil, approximatePages = nil, moreResults = nil, totalProducts = nil, products = nil, productSearchURL = nil)
    @timestamp = timestamp
    @ack = ack
    @errors = errors
    @build = build
    @version = version
    @correlationID = correlationID
    @__xmlele_any = nil
    @domainHistogram = domainHistogram
    @pageNumber = pageNumber
    @approximatePages = approximatePages
    @moreResults = moreResults
    @totalProducts = totalProducts
    @products = products
    @productSearchURL = productSearchURL
  end
end

# {urn:ebay:apis:eBLBaseComponents}FindItemsAdvancedResponseType
#   timestamp - SOAP::SOAPDateTime
#   ack - AckCodeType
#   errors - ErrorType
#   build - SOAP::SOAPString
#   version - SOAP::SOAPString
#   correlationID - SOAP::SOAPString
#   searchResult - SearchResultType
#   pageNumber - SOAP::SOAPInt
#   totalPages - SOAP::SOAPInt
#   totalItems - SOAP::SOAPInt
#   categoryHistogram - CategoryArrayType
#   totalStoresExpansionItems - SOAP::SOAPInt
#   totalInternationalExpansionItems - SOAP::SOAPInt
#   itemSearchURL - SOAP::SOAPAnyURI
#   duplicateItems - SOAP::SOAPBoolean
class FindItemsAdvancedResponseType < AbstractResponseType #:nodoc:
  attr_accessor :timestamp
  attr_accessor :ack
  attr_accessor :errors
  attr_accessor :build
  attr_accessor :version
  attr_accessor :correlationID
  attr_reader :__xmlele_any
  attr_accessor :searchResult
  attr_accessor :pageNumber
  attr_accessor :totalPages
  attr_accessor :totalItems
  attr_accessor :categoryHistogram
  attr_accessor :totalStoresExpansionItems
  attr_accessor :totalInternationalExpansionItems
  attr_accessor :itemSearchURL
  attr_accessor :duplicateItems

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(timestamp = nil, ack = nil, errors = [], build = nil, version = nil, correlationID = nil, searchResult = [], pageNumber = nil, totalPages = nil, totalItems = nil, categoryHistogram = nil, totalStoresExpansionItems = nil, totalInternationalExpansionItems = nil, itemSearchURL = nil, duplicateItems = nil)
    @timestamp = timestamp
    @ack = ack
    @errors = errors
    @build = build
    @version = version
    @correlationID = correlationID
    @__xmlele_any = nil
    @searchResult = searchResult
    @pageNumber = pageNumber
    @totalPages = totalPages
    @totalItems = totalItems
    @categoryHistogram = categoryHistogram
    @totalStoresExpansionItems = totalStoresExpansionItems
    @totalInternationalExpansionItems = totalInternationalExpansionItems
    @itemSearchURL = itemSearchURL
    @duplicateItems = duplicateItems
  end
end

# {urn:ebay:apis:eBLBaseComponents}FindItemsResponseType
#   timestamp - SOAP::SOAPDateTime
#   ack - AckCodeType
#   errors - ErrorType
#   build - SOAP::SOAPString
#   version - SOAP::SOAPString
#   correlationID - SOAP::SOAPString
#   item - SimpleItemType
#   totalItems - SOAP::SOAPInt
#   itemSearchURL - SOAP::SOAPAnyURI
#   duplicateItems - SOAP::SOAPBoolean
class FindItemsResponseType < AbstractResponseType #:nodoc:
  attr_accessor :timestamp
  attr_accessor :ack
  attr_accessor :errors
  attr_accessor :build
  attr_accessor :version
  attr_accessor :correlationID
  attr_reader :__xmlele_any
  attr_accessor :item
  attr_accessor :totalItems
  attr_accessor :itemSearchURL
  attr_accessor :duplicateItems

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(timestamp = nil, ack = nil, errors = [], build = nil, version = nil, correlationID = nil, item = [], totalItems = nil, itemSearchURL = nil, duplicateItems = nil)
    @timestamp = timestamp
    @ack = ack
    @errors = errors
    @build = build
    @version = version
    @correlationID = correlationID
    @__xmlele_any = nil
    @item = item
    @totalItems = totalItems
    @itemSearchURL = itemSearchURL
    @duplicateItems = duplicateItems
  end
end

# {urn:ebay:apis:eBLBaseComponents}FindPopularItemsResponseType
#   timestamp - SOAP::SOAPDateTime
#   ack - AckCodeType
#   errors - ErrorType
#   build - SOAP::SOAPString
#   version - SOAP::SOAPString
#   correlationID - SOAP::SOAPString
#   itemArray - SimpleItemArrayType
class FindPopularItemsResponseType < AbstractResponseType #:nodoc:
  attr_accessor :timestamp
  attr_accessor :ack
  attr_accessor :errors
  attr_accessor :build
  attr_accessor :version
  attr_accessor :correlationID
  attr_reader :__xmlele_any
  attr_accessor :itemArray

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(timestamp = nil, ack = nil, errors = [], build = nil, version = nil, correlationID = nil, itemArray = nil)
    @timestamp = timestamp
    @ack = ack
    @errors = errors
    @build = build
    @version = version
    @correlationID = correlationID
    @__xmlele_any = nil
    @itemArray = itemArray
  end
end

# {urn:ebay:apis:eBLBaseComponents}FindPopularSearchesResponseType
#   timestamp - SOAP::SOAPDateTime
#   ack - AckCodeType
#   errors - ErrorType
#   build - SOAP::SOAPString
#   version - SOAP::SOAPString
#   correlationID - SOAP::SOAPString
#   popularSearchResult - PopularSearchesType
#   pageNumber - SOAP::SOAPInt
#   totalPages - SOAP::SOAPInt
class FindPopularSearchesResponseType < AbstractResponseType #:nodoc:
  attr_accessor :timestamp
  attr_accessor :ack
  attr_accessor :errors
  attr_accessor :build
  attr_accessor :version
  attr_accessor :correlationID
  attr_reader :__xmlele_any
  attr_accessor :popularSearchResult
  attr_accessor :pageNumber
  attr_accessor :totalPages

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(timestamp = nil, ack = nil, errors = [], build = nil, version = nil, correlationID = nil, popularSearchResult = [], pageNumber = nil, totalPages = nil)
    @timestamp = timestamp
    @ack = ack
    @errors = errors
    @build = build
    @version = version
    @correlationID = correlationID
    @__xmlele_any = nil
    @popularSearchResult = popularSearchResult
    @pageNumber = pageNumber
    @totalPages = totalPages
  end
end

# {urn:ebay:apis:eBLBaseComponents}FindProductsResponseType
#   timestamp - SOAP::SOAPDateTime
#   ack - AckCodeType
#   errors - ErrorType
#   build - SOAP::SOAPString
#   version - SOAP::SOAPString
#   correlationID - SOAP::SOAPString
#   approximatePages - SOAP::SOAPInt
#   moreResults - SOAP::SOAPBoolean
#   domainHistogram - DomainHistogramType
#   itemArray - SimpleItemArrayType
#   pageNumber - SOAP::SOAPInt
#   product - CatalogProductType
#   totalProducts - SOAP::SOAPInt
#   duplicateItems - SOAP::SOAPBoolean
class FindProductsResponseType < AbstractResponseType #:nodoc:
  attr_accessor :timestamp
  attr_accessor :ack
  attr_accessor :errors
  attr_accessor :build
  attr_accessor :version
  attr_accessor :correlationID
  attr_reader :__xmlele_any
  attr_accessor :approximatePages
  attr_accessor :moreResults
  attr_accessor :domainHistogram
  attr_accessor :itemArray
  attr_accessor :pageNumber
  attr_accessor :product
  attr_accessor :totalProducts
  attr_accessor :duplicateItems

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(timestamp = nil, ack = nil, errors = [], build = nil, version = nil, correlationID = nil, approximatePages = nil, moreResults = nil, domainHistogram = nil, itemArray = nil, pageNumber = nil, product = [], totalProducts = nil, duplicateItems = nil)
    @timestamp = timestamp
    @ack = ack
    @errors = errors
    @build = build
    @version = version
    @correlationID = correlationID
    @__xmlele_any = nil
    @approximatePages = approximatePages
    @moreResults = moreResults
    @domainHistogram = domainHistogram
    @itemArray = itemArray
    @pageNumber = pageNumber
    @product = product
    @totalProducts = totalProducts
    @duplicateItems = duplicateItems
  end
end

# {urn:ebay:apis:eBLBaseComponents}FindReviewsAndGuidesResponseType
#   timestamp - SOAP::SOAPDateTime
#   ack - AckCodeType
#   errors - ErrorType
#   build - SOAP::SOAPString
#   version - SOAP::SOAPString
#   correlationID - SOAP::SOAPString
#   reviewCount - SOAP::SOAPInt
#   buyingGuideCount - SOAP::SOAPInt
#   reviewerRank - SOAP::SOAPInt
#   totalHelpfulnessVotes - SOAP::SOAPInt
#   productID - ProductIDType
#   reviewsAndGuidesURL - SOAP::SOAPAnyURI
#   pageNumber - SOAP::SOAPInt
#   totalPages - SOAP::SOAPInt
#   buyingGuideDetails - BuyingGuideDetailsType
#   reviewDetails - ReviewDetailsType
#   positiveHelpfulnessVotes - SOAP::SOAPInt
class FindReviewsAndGuidesResponseType < AbstractResponseType #:nodoc:
  attr_accessor :timestamp
  attr_accessor :ack
  attr_accessor :errors
  attr_accessor :build
  attr_accessor :version
  attr_accessor :correlationID
  attr_reader :__xmlele_any
  attr_accessor :reviewCount
  attr_accessor :buyingGuideCount
  attr_accessor :reviewerRank
  attr_accessor :totalHelpfulnessVotes
  attr_accessor :productID
  attr_accessor :reviewsAndGuidesURL
  attr_accessor :pageNumber
  attr_accessor :totalPages
  attr_accessor :buyingGuideDetails
  attr_accessor :reviewDetails
  attr_accessor :positiveHelpfulnessVotes

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(timestamp = nil, ack = nil, errors = [], build = nil, version = nil, correlationID = nil, reviewCount = nil, buyingGuideCount = nil, reviewerRank = nil, totalHelpfulnessVotes = nil, productID = nil, reviewsAndGuidesURL = nil, pageNumber = nil, totalPages = nil, buyingGuideDetails = nil, reviewDetails = nil, positiveHelpfulnessVotes = nil)
    @timestamp = timestamp
    @ack = ack
    @errors = errors
    @build = build
    @version = version
    @correlationID = correlationID
    @__xmlele_any = nil
    @reviewCount = reviewCount
    @buyingGuideCount = buyingGuideCount
    @reviewerRank = reviewerRank
    @totalHelpfulnessVotes = totalHelpfulnessVotes
    @productID = productID
    @reviewsAndGuidesURL = reviewsAndGuidesURL
    @pageNumber = pageNumber
    @totalPages = totalPages
    @buyingGuideDetails = buyingGuideDetails
    @reviewDetails = reviewDetails
    @positiveHelpfulnessVotes = positiveHelpfulnessVotes
  end
end

# {urn:ebay:apis:eBLBaseComponents}GetCategoryInfoResponseType
#   timestamp - SOAP::SOAPDateTime
#   ack - AckCodeType
#   errors - ErrorType
#   build - SOAP::SOAPString
#   version - SOAP::SOAPString
#   correlationID - SOAP::SOAPString
#   categoryArray - CategoryArrayType
#   categoryCount - SOAP::SOAPInt
#   updateTime - SOAP::SOAPDateTime
#   categoryVersion - SOAP::SOAPString
class GetCategoryInfoResponseType < AbstractResponseType #:nodoc:
  attr_accessor :timestamp
  attr_accessor :ack
  attr_accessor :errors
  attr_accessor :build
  attr_accessor :version
  attr_accessor :correlationID
  attr_reader :__xmlele_any
  attr_accessor :categoryArray
  attr_accessor :categoryCount
  attr_accessor :updateTime
  attr_accessor :categoryVersion

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(timestamp = nil, ack = nil, errors = [], build = nil, version = nil, correlationID = nil, categoryArray = nil, categoryCount = nil, updateTime = nil, categoryVersion = nil)
    @timestamp = timestamp
    @ack = ack
    @errors = errors
    @build = build
    @version = version
    @correlationID = correlationID
    @__xmlele_any = nil
    @categoryArray = categoryArray
    @categoryCount = categoryCount
    @updateTime = updateTime
    @categoryVersion = categoryVersion
  end
end

# {urn:ebay:apis:eBLBaseComponents}GetItemStatusResponseType
#   timestamp - SOAP::SOAPDateTime
#   ack - AckCodeType
#   errors - ErrorType
#   build - SOAP::SOAPString
#   version - SOAP::SOAPString
#   correlationID - SOAP::SOAPString
#   item - SimpleItemType
class GetItemStatusResponseType < AbstractResponseType #:nodoc:
  attr_accessor :timestamp
  attr_accessor :ack
  attr_accessor :errors
  attr_accessor :build
  attr_accessor :version
  attr_accessor :correlationID
  attr_reader :__xmlele_any
  attr_accessor :item

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(timestamp = nil, ack = nil, errors = [], build = nil, version = nil, correlationID = nil, item = [])
    @timestamp = timestamp
    @ack = ack
    @errors = errors
    @build = build
    @version = version
    @correlationID = correlationID
    @__xmlele_any = nil
    @item = item
  end
end

# {urn:ebay:apis:eBLBaseComponents}GetMultipleItemsResponseType
#   timestamp - SOAP::SOAPDateTime
#   ack - AckCodeType
#   errors - ErrorType
#   build - SOAP::SOAPString
#   version - SOAP::SOAPString
#   correlationID - SOAP::SOAPString
#   item - SimpleItemType
class GetMultipleItemsResponseType < AbstractResponseType #:nodoc:
  attr_accessor :timestamp
  attr_accessor :ack
  attr_accessor :errors
  attr_accessor :build
  attr_accessor :version
  attr_accessor :correlationID
  attr_reader :__xmlele_any
  attr_accessor :item

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(timestamp = nil, ack = nil, errors = [], build = nil, version = nil, correlationID = nil, item = [])
    @timestamp = timestamp
    @ack = ack
    @errors = errors
    @build = build
    @version = version
    @correlationID = correlationID
    @__xmlele_any = nil
    @item = item
  end
end

# {urn:ebay:apis:eBLBaseComponents}GetShippingCostsResponseType
#   timestamp - SOAP::SOAPDateTime
#   ack - AckCodeType
#   errors - ErrorType
#   build - SOAP::SOAPString
#   version - SOAP::SOAPString
#   correlationID - SOAP::SOAPString
#   shippingDetails - ShippingDetailsType
#   shippingCostSummary - ShippingCostSummaryType
class GetShippingCostsResponseType < AbstractResponseType #:nodoc:
  attr_accessor :timestamp
  attr_accessor :ack
  attr_accessor :errors
  attr_accessor :build
  attr_accessor :version
  attr_accessor :correlationID
  attr_reader :__xmlele_any
  attr_accessor :shippingDetails
  attr_accessor :shippingCostSummary

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(timestamp = nil, ack = nil, errors = [], build = nil, version = nil, correlationID = nil, shippingDetails = nil, shippingCostSummary = nil)
    @timestamp = timestamp
    @ack = ack
    @errors = errors
    @build = build
    @version = version
    @correlationID = correlationID
    @__xmlele_any = nil
    @shippingDetails = shippingDetails
    @shippingCostSummary = shippingCostSummary
  end
end

# {urn:ebay:apis:eBLBaseComponents}GetSingleItemResponseType
#   timestamp - SOAP::SOAPDateTime
#   ack - AckCodeType
#   errors - ErrorType
#   build - SOAP::SOAPString
#   version - SOAP::SOAPString
#   correlationID - SOAP::SOAPString
#   item - SimpleItemType
class GetSingleItemResponseType < AbstractResponseType #:nodoc:
  attr_accessor :timestamp
  attr_accessor :ack
  attr_accessor :errors
  attr_accessor :build
  attr_accessor :version
  attr_accessor :correlationID
  attr_reader :__xmlele_any
  attr_accessor :item

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(timestamp = nil, ack = nil, errors = [], build = nil, version = nil, correlationID = nil, item = nil)
    @timestamp = timestamp
    @ack = ack
    @errors = errors
    @build = build
    @version = version
    @correlationID = correlationID
    @__xmlele_any = nil
    @item = item
  end
end

# {urn:ebay:apis:eBLBaseComponents}GetUserProfileResponseType
#   timestamp - SOAP::SOAPDateTime
#   ack - AckCodeType
#   errors - ErrorType
#   build - SOAP::SOAPString
#   version - SOAP::SOAPString
#   correlationID - SOAP::SOAPString
#   user - SimpleUserType
#   feedbackHistory - FeedbackHistoryType
#   feedbackDetails - FeedbackDetailType
class GetUserProfileResponseType < AbstractResponseType #:nodoc:
  attr_accessor :timestamp
  attr_accessor :ack
  attr_accessor :errors
  attr_accessor :build
  attr_accessor :version
  attr_accessor :correlationID
  attr_reader :__xmlele_any
  attr_accessor :user
  attr_accessor :feedbackHistory
  attr_accessor :feedbackDetails

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(timestamp = nil, ack = nil, errors = [], build = nil, version = nil, correlationID = nil, user = nil, feedbackHistory = nil, feedbackDetails = [])
    @timestamp = timestamp
    @ack = ack
    @errors = errors
    @build = build
    @version = version
    @correlationID = correlationID
    @__xmlele_any = nil
    @user = user
    @feedbackHistory = feedbackHistory
    @feedbackDetails = feedbackDetails
  end
end

# {urn:ebay:apis:eBLBaseComponents}GeteBayTimeResponseType
#   timestamp - SOAP::SOAPDateTime
#   ack - AckCodeType
#   errors - ErrorType
#   build - SOAP::SOAPString
#   version - SOAP::SOAPString
#   correlationID - SOAP::SOAPString
class GeteBayTimeResponseType < AbstractResponseType #:nodoc:
  attr_accessor :timestamp
  attr_accessor :ack
  attr_accessor :errors
  attr_accessor :build
  attr_accessor :version
  attr_accessor :correlationID
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(timestamp = nil, ack = nil, errors = [], build = nil, version = nil, correlationID = nil)
    @timestamp = timestamp
    @ack = ack
    @errors = errors
    @build = build
    @version = version
    @correlationID = correlationID
    @__xmlele_any = nil
  end
end

# {urn:ebay:apis:eBLBaseComponents}ErrorParameterType
#   value - SOAP::SOAPString
#   xmlattr_ParamID - SOAP::SOAPString
class ErrorParameterType #:nodoc:
  AttrParamID = XSD::QName.new(nil, "ParamID")

  attr_accessor :value
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_ParamID
    __xmlattr[AttrParamID]
  end

  def xmlattr_ParamID=(value)
    __xmlattr[AttrParamID] = value
  end

  def initialize(value = nil)
    @value = value
    @__xmlele_any = nil
    @__xmlattr = {}
  end
end

# {urn:ebay:apis:eBLBaseComponents}ErrorType
#   shortMessage - SOAP::SOAPString
#   longMessage - SOAP::SOAPString
#   errorCode - SOAP::SOAPToken
#   userDisplayHint - SOAP::SOAPBoolean
#   severityCode - SeverityCodeType
#   errorParameters - ErrorParameterType
#   errorClassification - ErrorClassificationCodeType #:nodoc:
class ErrorType #:nodoc:
  attr_accessor :shortMessage
  attr_accessor :longMessage
  attr_accessor :errorCode
  attr_accessor :userDisplayHint
  attr_accessor :severityCode
  attr_accessor :errorParameters
  attr_accessor :errorClassification #:nodoc:
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(shortMessage = nil, longMessage = nil, errorCode = nil, userDisplayHint = nil, severityCode = nil, errorParameters = [], errorClassification = nil) #:nodoc:
    @shortMessage = shortMessage
    @longMessage = longMessage
    @errorCode = errorCode
    @userDisplayHint = userDisplayHint
    @severityCode = severityCode
    @errorParameters = errorParameters
    @errorClassification = errorClassification #:nodoc:
    @__xmlele_any = nil
  end
end

# {urn:ebay:apis:eBLBaseComponents}AddressType
#   name - SOAP::SOAPString
#   street - SOAP::SOAPString
#   street1 - SOAP::SOAPString
#   street2 - SOAP::SOAPString
#   cityName - SOAP::SOAPString
#   county - SOAP::SOAPString
#   stateOrProvince - SOAP::SOAPString
#   countryName - SOAP::SOAPString
#   phone - SOAP::SOAPString
#   phoneCountryPrefix - SOAP::SOAPString
#   phoneAreaOrCityCode - SOAP::SOAPString
#   phoneLocalNumber - SOAP::SOAPString
#   phone2CountryPrefix - SOAP::SOAPString
#   phone2AreaOrCityCode - SOAP::SOAPString
#   phone2LocalNumber - SOAP::SOAPString
#   postalCode - SOAP::SOAPString
#   addressID - SOAP::SOAPString
#   externalAddressID - SOAP::SOAPString
#   internationalName - SOAP::SOAPString
#   internationalStateAndCity - SOAP::SOAPString
#   internationalStreet - SOAP::SOAPString
#   companyName - SOAP::SOAPString
#   firstName - SOAP::SOAPString
#   lastName - SOAP::SOAPString
class AddressType #:nodoc:
  attr_accessor :name
  attr_accessor :street
  attr_accessor :street1
  attr_accessor :street2
  attr_accessor :cityName
  attr_accessor :county
  attr_accessor :stateOrProvince
  attr_accessor :countryName
  attr_accessor :phone
  attr_accessor :phoneCountryPrefix
  attr_accessor :phoneAreaOrCityCode
  attr_accessor :phoneLocalNumber
  attr_accessor :phone2CountryPrefix
  attr_accessor :phone2AreaOrCityCode
  attr_accessor :phone2LocalNumber
  attr_accessor :postalCode
  attr_accessor :addressID
  attr_accessor :externalAddressID
  attr_accessor :internationalName
  attr_accessor :internationalStateAndCity
  attr_accessor :internationalStreet
  attr_accessor :companyName
  attr_accessor :firstName
  attr_accessor :lastName
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(name = nil, street = nil, street1 = nil, street2 = nil, cityName = nil, county = nil, stateOrProvince = nil, countryName = nil, phone = nil, phoneCountryPrefix = nil, phoneAreaOrCityCode = nil, phoneLocalNumber = nil, phone2CountryPrefix = nil, phone2AreaOrCityCode = nil, phone2LocalNumber = nil, postalCode = nil, addressID = nil, externalAddressID = nil, internationalName = nil, internationalStateAndCity = nil, internationalStreet = nil, companyName = nil, firstName = nil, lastName = nil)
    @name = name
    @street = street
    @street1 = street1
    @street2 = street2
    @cityName = cityName
    @county = county
    @stateOrProvince = stateOrProvince
    @countryName = countryName
    @phone = phone
    @phoneCountryPrefix = phoneCountryPrefix
    @phoneAreaOrCityCode = phoneAreaOrCityCode
    @phoneLocalNumber = phoneLocalNumber
    @phone2CountryPrefix = phone2CountryPrefix
    @phone2AreaOrCityCode = phone2AreaOrCityCode
    @phone2LocalNumber = phone2LocalNumber
    @postalCode = postalCode
    @addressID = addressID
    @externalAddressID = externalAddressID
    @internationalName = internationalName
    @internationalStateAndCity = internationalStateAndCity
    @internationalStreet = internationalStreet
    @companyName = companyName
    @firstName = firstName
    @lastName = lastName
    @__xmlele_any = nil
  end
end

# {urn:ebay:apis:eBLBaseComponents}AmountType
#   xmlattr_currencyID - SOAP::SOAPToken
class AmountType < ::String #:nodoc:
  AttrCurrencyID = XSD::QName.new(nil, "currencyID")

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_currencyID
    __xmlattr[AttrCurrencyID]
  end

  def xmlattr_currencyID=(value)
    __xmlattr[AttrCurrencyID] = value
  end

  def initialize(*arg)
    super
    @__xmlattr = {}
  end
end

# {urn:ebay:apis:eBLBaseComponents}AverageRatingDetailsType
#   ratingDetail - FeedbackRatingDetailCodeType
#   rating - SOAP::SOAPDouble
#   ratingCount - SOAP::SOAPLong
class AverageRatingDetailsType #:nodoc:
  attr_accessor :ratingDetail
  attr_accessor :rating
  attr_accessor :ratingCount
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(ratingDetail = nil, rating = nil, ratingCount = nil)
    @ratingDetail = ratingDetail
    @rating = rating
    @ratingCount = ratingCount
    @__xmlele_any = nil
  end
end

# {urn:ebay:apis:eBLBaseComponents}BusinessSellerDetailsType
#   address - AddressType
#   fax - SOAP::SOAPString
#   email - SOAP::SOAPString
#   additionalContactInformation - SOAP::SOAPString
#   tradeRegistrationNumber - SOAP::SOAPString
#   legalInvoice - SOAP::SOAPBoolean
#   termsAndConditions - SOAP::SOAPString
#   vATDetails - VATDetailsType
class BusinessSellerDetailsType #:nodoc:
  attr_accessor :address
  attr_accessor :fax
  attr_accessor :email
  attr_accessor :additionalContactInformation
  attr_accessor :tradeRegistrationNumber
  attr_accessor :legalInvoice
  attr_accessor :termsAndConditions
  attr_accessor :vATDetails
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(address = nil, fax = nil, email = nil, additionalContactInformation = nil, tradeRegistrationNumber = nil, legalInvoice = nil, termsAndConditions = nil, vATDetails = nil)
    @address = address
    @fax = fax
    @email = email
    @additionalContactInformation = additionalContactInformation
    @tradeRegistrationNumber = tradeRegistrationNumber
    @legalInvoice = legalInvoice
    @termsAndConditions = termsAndConditions
    @vATDetails = vATDetails
    @__xmlele_any = nil
  end
end

# {urn:ebay:apis:eBLBaseComponents}BuyingGuideDetailsType
#   buyingGuide - BuyingGuideType
#   buyingGuideHub - SOAP::SOAPAnyURI
class BuyingGuideDetailsType #:nodoc:
  attr_accessor :buyingGuide
  attr_accessor :buyingGuideHub
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(buyingGuide = [], buyingGuideHub = nil)
    @buyingGuide = buyingGuide
    @buyingGuideHub = buyingGuideHub
    @__xmlele_any = nil
  end
end

# {urn:ebay:apis:eBLBaseComponents}BuyingGuideType
#   name - SOAP::SOAPString
#   uRL - SOAP::SOAPAnyURI
#   categoryID - SOAP::SOAPString
#   title - SOAP::SOAPString
#   text - SOAP::SOAPString
#   creationTime - SOAP::SOAPDateTime
#   userID - SOAP::SOAPString
class BuyingGuideType #:nodoc:
  attr_accessor :name
  attr_accessor :uRL
  attr_accessor :categoryID
  attr_accessor :title
  attr_accessor :text
  attr_accessor :creationTime
  attr_accessor :userID
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(name = nil, uRL = nil, categoryID = nil, title = nil, text = nil, creationTime = nil, userID = nil)
    @name = name
    @uRL = uRL
    @categoryID = categoryID
    @title = title
    @text = text
    @creationTime = creationTime
    @userID = userID
    @__xmlele_any = nil
  end
end

# {urn:ebay:apis:eBLBaseComponents}CatalogProductType
#   domainName - SOAP::SOAPString
#   detailsURL - SOAP::SOAPAnyURI
#   displayStockPhotos - SOAP::SOAPBoolean
#   productID - ProductIDType
#   itemCount - SOAP::SOAPInt
#   itemSpecifics - NameValueListArrayType
#   reviewCount - SOAP::SOAPInt
#   stockPhotoURL - SOAP::SOAPAnyURI
#   title - SOAP::SOAPString
#   productState - ProductStateCodeType
class CatalogProductType #:nodoc:
  attr_accessor :domainName
  attr_accessor :detailsURL
  attr_accessor :displayStockPhotos
  attr_accessor :productID
  attr_accessor :itemCount
  attr_accessor :itemSpecifics
  attr_accessor :reviewCount
  attr_accessor :stockPhotoURL
  attr_accessor :title
  attr_accessor :productState
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(domainName = nil, detailsURL = nil, displayStockPhotos = nil, productID = [], itemCount = nil, itemSpecifics = nil, reviewCount = nil, stockPhotoURL = nil, title = nil, productState = nil)
    @domainName = domainName
    @detailsURL = detailsURL
    @displayStockPhotos = displayStockPhotos
    @productID = productID
    @itemCount = itemCount
    @itemSpecifics = itemSpecifics
    @reviewCount = reviewCount
    @stockPhotoURL = stockPhotoURL
    @title = title
    @productState = productState
    @__xmlele_any = nil
  end
end

# {urn:ebay:apis:eBLBaseComponents}CategoryArrayType
class CategoryArrayType < ::Array #:nodoc:
end

# {urn:ebay:apis:eBLBaseComponents}CategoryType
#   categoryID - SOAP::SOAPString
#   categoryLevel - SOAP::SOAPInt
#   categoryName - SOAP::SOAPString
#   categoryParentID - SOAP::SOAPString
#   categoryParentName - SOAP::SOAPString
#   itemCount - SOAP::SOAPInt
#   categoryNamePath - SOAP::SOAPString
#   categoryIDPath - SOAP::SOAPString
#   leafCategory - SOAP::SOAPBoolean
class CategoryType #:nodoc:
  attr_accessor :categoryID
  attr_accessor :categoryLevel
  attr_accessor :categoryName
  attr_accessor :categoryParentID
  attr_accessor :categoryParentName
  attr_accessor :itemCount
  attr_accessor :categoryNamePath
  attr_accessor :categoryIDPath
  attr_accessor :leafCategory
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(categoryID = nil, categoryLevel = nil, categoryName = nil, categoryParentID = nil, categoryParentName = nil, itemCount = nil, categoryNamePath = nil, categoryIDPath = nil, leafCategory = nil)
    @categoryID = categoryID
    @categoryLevel = categoryLevel
    @categoryName = categoryName
    @categoryParentID = categoryParentID
    @categoryParentName = categoryParentName
    @itemCount = itemCount
    @categoryNamePath = categoryNamePath
    @categoryIDPath = categoryIDPath
    @leafCategory = leafCategory
    @__xmlele_any = nil
  end
end

# {urn:ebay:apis:eBLBaseComponents}CharityType
#   charityID - SOAP::SOAPString
#   charityName - SOAP::SOAPString
#   charityNumber - SOAP::SOAPInt
#   donationPercent - SOAP::SOAPFloat
#   mission - SOAP::SOAPString
#   logoURL - SOAP::SOAPString
#   charityListing - SOAP::SOAPBoolean
#   status - CharityStatusCodeType
class CharityType #:nodoc:
  attr_accessor :charityID
  attr_accessor :charityName
  attr_accessor :charityNumber
  attr_accessor :donationPercent
  attr_accessor :mission
  attr_accessor :logoURL
  attr_accessor :charityListing
  attr_accessor :status
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(charityID = nil, charityName = nil, charityNumber = nil, donationPercent = nil, mission = nil, logoURL = nil, charityListing = nil, status = nil)
    @charityID = charityID
    @charityName = charityName
    @charityNumber = charityNumber
    @donationPercent = donationPercent
    @mission = mission
    @logoURL = logoURL
    @charityListing = charityListing
    @status = status
    @__xmlele_any = nil
  end
end

# {urn:ebay:apis:eBLBaseComponents}DistanceType
#   xmlattr_unit - SOAP::SOAPString
class DistanceType < ::String #:nodoc:
  AttrUnit = XSD::QName.new(nil, "unit")

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_unit
    __xmlattr[AttrUnit]
  end

  def xmlattr_unit=(value)
    __xmlattr[AttrUnit] = value
  end

  def initialize(*arg)
    super
    @__xmlattr = {}
  end
end

# {urn:ebay:apis:eBLBaseComponents}DomainHistogramType
#   domain - HistogramEntryType
class DomainHistogramType #:nodoc:
  attr_accessor :domain
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(domain = [])
    @domain = domain
    @__xmlele_any = nil
  end
end

# {urn:ebay:apis:eBLBaseComponents}ExternalProductIDType
#   value - SOAP::SOAPString
#   returnSearchResultOnDuplicates - SOAP::SOAPBoolean
#   type - ExternalProductCodeType
#   alternateValue - SOAP::SOAPString
class ExternalProductIDType #:nodoc:
  attr_accessor :value
  attr_accessor :returnSearchResultOnDuplicates
  attr_accessor :type
  attr_accessor :alternateValue
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(value = nil, returnSearchResultOnDuplicates = nil, type = nil, alternateValue = [])
    @value = value
    @returnSearchResultOnDuplicates = returnSearchResultOnDuplicates
    @type = type
    @alternateValue = alternateValue
    @__xmlele_any = nil
  end
end

# {urn:ebay:apis:eBLBaseComponents}FeedbackDetailType
#   commentingUser - SOAP::SOAPString
#   commentingUserScore - SOAP::SOAPInt
#   commentText - SOAP::SOAPString
#   commentTime - SOAP::SOAPDateTime
#   commentType - CommentTypeCodeType
#   feedbackResponse - SOAP::SOAPString
#   followUp - SOAP::SOAPString
#   itemID - SOAP::SOAPString
#   role - TradingRoleCodeType
#   itemTitle - SOAP::SOAPString
#   itemPrice - AmountType
#   feedbackID - SOAP::SOAPString
#   transactionID - SOAP::SOAPString
#   commentReplaced - SOAP::SOAPBoolean
#   responseReplaced - SOAP::SOAPBoolean
#   followUpReplaced - SOAP::SOAPBoolean
#   countable - SOAP::SOAPBoolean
class FeedbackDetailType #:nodoc:
  attr_accessor :commentingUser
  attr_accessor :commentingUserScore
  attr_accessor :commentText
  attr_accessor :commentTime
  attr_accessor :commentType
  attr_accessor :feedbackResponse
  attr_accessor :followUp
  attr_accessor :itemID
  attr_accessor :role
  attr_accessor :itemTitle
  attr_accessor :itemPrice
  attr_accessor :feedbackID
  attr_accessor :transactionID
  attr_accessor :commentReplaced
  attr_accessor :responseReplaced
  attr_accessor :followUpReplaced
  attr_accessor :countable
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(commentingUser = nil, commentingUserScore = nil, commentText = nil, commentTime = nil, commentType = nil, feedbackResponse = nil, followUp = nil, itemID = nil, role = nil, itemTitle = nil, itemPrice = nil, feedbackID = nil, transactionID = nil, commentReplaced = nil, responseReplaced = nil, followUpReplaced = nil, countable = nil)
    @commentingUser = commentingUser
    @commentingUserScore = commentingUserScore
    @commentText = commentText
    @commentTime = commentTime
    @commentType = commentType
    @feedbackResponse = feedbackResponse
    @followUp = followUp
    @itemID = itemID
    @role = role
    @itemTitle = itemTitle
    @itemPrice = itemPrice
    @feedbackID = feedbackID
    @transactionID = transactionID
    @commentReplaced = commentReplaced
    @responseReplaced = responseReplaced
    @followUpReplaced = followUpReplaced
    @countable = countable
    @__xmlele_any = nil
  end
end

# {urn:ebay:apis:eBLBaseComponents}FeedbackHistoryType
#   bidRetractionFeedbackPeriods - FeedbackPeriodType
#   negativeFeedbackPeriods - FeedbackPeriodType
#   neutralFeedbackPeriods - FeedbackPeriodType
#   positiveFeedbackPeriods - FeedbackPeriodType
#   totalFeedbackPeriods - FeedbackPeriodType
#   uniqueNegativeFeedbackCount - SOAP::SOAPLong
#   uniquePositiveFeedbackCount - SOAP::SOAPLong
#   averageRatingDetails - AverageRatingDetailsType
#   neutralCommentCountFromSuspendedUsers - SOAP::SOAPLong
#   uniqueNeutralFeedbackCount - SOAP::SOAPLong
class FeedbackHistoryType #:nodoc:
  attr_accessor :bidRetractionFeedbackPeriods
  attr_accessor :negativeFeedbackPeriods
  attr_accessor :neutralFeedbackPeriods
  attr_accessor :positiveFeedbackPeriods
  attr_accessor :totalFeedbackPeriods
  attr_accessor :uniqueNegativeFeedbackCount
  attr_accessor :uniquePositiveFeedbackCount
  attr_accessor :averageRatingDetails
  attr_accessor :neutralCommentCountFromSuspendedUsers
  attr_accessor :uniqueNeutralFeedbackCount
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(bidRetractionFeedbackPeriods = [], negativeFeedbackPeriods = [], neutralFeedbackPeriods = [], positiveFeedbackPeriods = [], totalFeedbackPeriods = [], uniqueNegativeFeedbackCount = nil, uniquePositiveFeedbackCount = nil, averageRatingDetails = [], neutralCommentCountFromSuspendedUsers = nil, uniqueNeutralFeedbackCount = nil)
    @bidRetractionFeedbackPeriods = bidRetractionFeedbackPeriods
    @negativeFeedbackPeriods = negativeFeedbackPeriods
    @neutralFeedbackPeriods = neutralFeedbackPeriods
    @positiveFeedbackPeriods = positiveFeedbackPeriods
    @totalFeedbackPeriods = totalFeedbackPeriods
    @uniqueNegativeFeedbackCount = uniqueNegativeFeedbackCount
    @uniquePositiveFeedbackCount = uniquePositiveFeedbackCount
    @averageRatingDetails = averageRatingDetails
    @neutralCommentCountFromSuspendedUsers = neutralCommentCountFromSuspendedUsers
    @uniqueNeutralFeedbackCount = uniqueNeutralFeedbackCount
    @__xmlele_any = nil
  end
end

# {urn:ebay:apis:eBLBaseComponents}FeedbackPeriodType
#   periodInDays - SOAP::SOAPInt
#   count - SOAP::SOAPLong
class FeedbackPeriodType #:nodoc:
  attr_accessor :periodInDays
  attr_accessor :count
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(periodInDays = nil, count = nil)
    @periodInDays = periodInDays
    @count = count
    @__xmlele_any = nil
  end
end

# {urn:ebay:apis:eBLBaseComponents}HalfCatalogProductType
#   title - SOAP::SOAPString
#   detailsURL - SOAP::SOAPAnyURI
#   stockPhotoURL - SOAP::SOAPAnyURI
#   shippingCostSummary - ShippingCostSummaryType
#   displayStockPhotos - SOAP::SOAPBoolean
#   itemCount - SOAP::SOAPInt
#   productID - ProductIDType
#   domainName - SOAP::SOAPString
#   itemSpecifics - NameValueListArrayType
#   itemArray - SimpleItemArrayType
#   reviewCount - SOAP::SOAPInt
#   minPrice - AmountType
class HalfCatalogProductType #:nodoc:
  attr_accessor :title
  attr_accessor :detailsURL
  attr_accessor :stockPhotoURL
  attr_accessor :shippingCostSummary
  attr_accessor :displayStockPhotos
  attr_accessor :itemCount
  attr_accessor :productID
  attr_accessor :domainName
  attr_accessor :itemSpecifics
  attr_accessor :itemArray
  attr_accessor :reviewCount
  attr_accessor :minPrice
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(title = nil, detailsURL = nil, stockPhotoURL = nil, shippingCostSummary = nil, displayStockPhotos = nil, itemCount = nil, productID = [], domainName = nil, itemSpecifics = nil, itemArray = nil, reviewCount = nil, minPrice = nil)
    @title = title
    @detailsURL = detailsURL
    @stockPhotoURL = stockPhotoURL
    @shippingCostSummary = shippingCostSummary
    @displayStockPhotos = displayStockPhotos
    @itemCount = itemCount
    @productID = productID
    @domainName = domainName
    @itemSpecifics = itemSpecifics
    @itemArray = itemArray
    @reviewCount = reviewCount
    @minPrice = minPrice
    @__xmlele_any = nil
  end
end

# {urn:ebay:apis:eBLBaseComponents}HalfProductsType
#   product - HalfCatalogProductType
class HalfProductsType #:nodoc:
  attr_accessor :product
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(product = [])
    @product = product
    @__xmlele_any = nil
  end
end

# {urn:ebay:apis:eBLBaseComponents}HistogramEntryType
#   name - SOAP::SOAPString
#   count - SOAP::SOAPInt
class HistogramEntryType #:nodoc:
  attr_accessor :name
  attr_accessor :count
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(name = nil, count = nil)
    @name = name
    @count = count
    @__xmlele_any = nil
  end
end

# {urn:ebay:apis:eBLBaseComponents}InternationalShippingServiceOptionType
#   shippingInsuranceCost - AmountType
#   shippingServiceName - SOAP::SOAPToken
#   shippingServiceAdditionalCost - AmountType
#   shippingServiceCost - AmountType
#   shippingServicePriority - SOAP::SOAPInt
#   shipsTo - SOAP::SOAPString
class InternationalShippingServiceOptionType #:nodoc:
  attr_accessor :shippingInsuranceCost
  attr_accessor :shippingServiceName
  attr_accessor :shippingServiceAdditionalCost
  attr_accessor :shippingServiceCost
  attr_accessor :shippingServicePriority
  attr_accessor :shipsTo
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(shippingInsuranceCost = nil, shippingServiceName = nil, shippingServiceAdditionalCost = nil, shippingServiceCost = nil, shippingServicePriority = nil, shipsTo = [])
    @shippingInsuranceCost = shippingInsuranceCost
    @shippingServiceName = shippingServiceName
    @shippingServiceAdditionalCost = shippingServiceAdditionalCost
    @shippingServiceCost = shippingServiceCost
    @shippingServicePriority = shippingServicePriority
    @shipsTo = shipsTo
    @__xmlele_any = nil
  end
end

# {urn:ebay:apis:eBLBaseComponents}NameValueListArrayType
class NameValueListArrayType < ::Array #:nodoc:
end

# {urn:ebay:apis:eBLBaseComponents}NameValueListType
#   name - SOAP::SOAPString
#   value - SOAP::SOAPString
class NameValueListType #:nodoc:
  attr_accessor :name
  attr_accessor :value
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(name = nil, value = [])
    @name = name
    @value = value
    @__xmlele_any = nil
  end
end

# {urn:ebay:apis:eBLBaseComponents}PopularSearchesType
#   categoryID - SOAP::SOAPString
#   categoryParentID - SOAP::SOAPString
#   queryKeywords - SOAP::SOAPString
#   alternativeSearches - SOAP::SOAPString
#   relatedSearches - SOAP::SOAPString
#   categoryName - SOAP::SOAPString
#   categoryParentName - SOAP::SOAPString
class PopularSearchesType #:nodoc:
  attr_accessor :categoryID
  attr_accessor :categoryParentID
  attr_accessor :queryKeywords
  attr_accessor :alternativeSearches
  attr_accessor :relatedSearches
  attr_accessor :categoryName
  attr_accessor :categoryParentName
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(categoryID = nil, categoryParentID = nil, queryKeywords = nil, alternativeSearches = nil, relatedSearches = nil, categoryName = nil, categoryParentName = nil)
    @categoryID = categoryID
    @categoryParentID = categoryParentID
    @queryKeywords = queryKeywords
    @alternativeSearches = alternativeSearches
    @relatedSearches = relatedSearches
    @categoryName = categoryName
    @categoryParentName = categoryParentName
    @__xmlele_any = nil
  end
end

# {urn:ebay:apis:eBLBaseComponents}ProductIDType
#   xmlattr_type - SOAP::SOAPToken
class ProductIDType < ::String #:nodoc:
  AttrType = XSD::QName.new(nil, "type")

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_type
    __xmlattr[AttrType]
  end

  def xmlattr_type=(value)
    __xmlattr[AttrType] = value
  end

  def initialize(*arg)
    super
    @__xmlattr = {}
  end
end

# {urn:ebay:apis:eBLBaseComponents}ReturnPolicyType
#   refund - SOAP::SOAPString
#   returnsWithin - SOAP::SOAPString
#   returnsAccepted - SOAP::SOAPString
#   description - SOAP::SOAPString
#   warrantyOffered - SOAP::SOAPString
#   warrantyType - SOAP::SOAPString
#   warrantyDuration - SOAP::SOAPString
#   eAN - SOAP::SOAPString
#   shippingCostPaidBy - SOAP::SOAPString
class ReturnPolicyType #:nodoc:
  attr_accessor :refund
  attr_accessor :returnsWithin
  attr_accessor :returnsAccepted
  attr_accessor :description
  attr_accessor :warrantyOffered
  attr_accessor :warrantyType
  attr_accessor :warrantyDuration
  attr_accessor :eAN
  attr_accessor :shippingCostPaidBy
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(refund = nil, returnsWithin = nil, returnsAccepted = nil, description = nil, warrantyOffered = nil, warrantyType = nil, warrantyDuration = nil, eAN = nil, shippingCostPaidBy = nil)
    @refund = refund
    @returnsWithin = returnsWithin
    @returnsAccepted = returnsAccepted
    @description = description
    @warrantyOffered = warrantyOffered
    @warrantyType = warrantyType
    @warrantyDuration = warrantyDuration
    @eAN = eAN
    @shippingCostPaidBy = shippingCostPaidBy
    @__xmlele_any = nil
  end
end

# {urn:ebay:apis:eBLBaseComponents}ReviewDetailsType
#   averageRating - SOAP::SOAPFloat
#   review - ReviewType
class ReviewDetailsType #:nodoc:
  attr_accessor :averageRating
  attr_accessor :review
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(averageRating = nil, review = [])
    @averageRating = averageRating
    @review = review
    @__xmlele_any = nil
  end
end

# {urn:ebay:apis:eBLBaseComponents}ReviewType
#   uRL - SOAP::SOAPAnyURI
#   title - SOAP::SOAPString
#   rating - SOAP::SOAPInt
#   text - SOAP::SOAPString
#   userID - SOAP::SOAPString
#   creationTime - SOAP::SOAPDateTime
class ReviewType #:nodoc:
  attr_accessor :uRL
  attr_accessor :title
  attr_accessor :rating
  attr_accessor :text
  attr_accessor :userID
  attr_accessor :creationTime
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(uRL = nil, title = nil, rating = nil, text = nil, userID = nil, creationTime = nil)
    @uRL = uRL
    @title = title
    @rating = rating
    @text = text
    @userID = userID
    @creationTime = creationTime
    @__xmlele_any = nil
  end
end

# {urn:ebay:apis:eBLBaseComponents}SalesTaxType
#   salesTaxPercent - SOAP::SOAPFloat
#   salesTaxState - SOAP::SOAPString
#   shippingIncludedInTax - SOAP::SOAPBoolean
#   salesTaxAmount - AmountType
class SalesTaxType #:nodoc:
  attr_accessor :salesTaxPercent
  attr_accessor :salesTaxState
  attr_accessor :shippingIncludedInTax
  attr_accessor :salesTaxAmount
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(salesTaxPercent = nil, salesTaxState = nil, shippingIncludedInTax = nil, salesTaxAmount = nil)
    @salesTaxPercent = salesTaxPercent
    @salesTaxState = salesTaxState
    @shippingIncludedInTax = shippingIncludedInTax
    @salesTaxAmount = salesTaxAmount
    @__xmlele_any = nil
  end
end

# {urn:ebay:apis:eBLBaseComponents}SearchResultType
#   categoryGroupNamePath - SOAP::SOAPString
#   categoryGroupIDPath - SOAP::SOAPString
#   categoryGroupItemCount - SOAP::SOAPInt
#   itemArray - SimpleItemArrayType
class SearchResultType #:nodoc:
  attr_accessor :categoryGroupNamePath
  attr_accessor :categoryGroupIDPath
  attr_accessor :categoryGroupItemCount
  attr_accessor :itemArray
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(categoryGroupNamePath = nil, categoryGroupIDPath = nil, categoryGroupItemCount = nil, itemArray = nil)
    @categoryGroupNamePath = categoryGroupNamePath
    @categoryGroupIDPath = categoryGroupIDPath
    @categoryGroupItemCount = categoryGroupItemCount
    @itemArray = itemArray
    @__xmlele_any = nil
  end
end

# {urn:ebay:apis:eBLBaseComponents}ShippingCostSummaryType
#   shippingServiceName - SOAP::SOAPString
#   shippingServiceCost - AmountType
#   insuranceCost - AmountType
#   shippingType - ShippingTypeCodeType
#   insuranceOption - InsuranceOptionCodeType
class ShippingCostSummaryType #:nodoc:
  attr_accessor :shippingServiceName
  attr_accessor :shippingServiceCost
  attr_accessor :insuranceCost
  attr_accessor :shippingType
  attr_accessor :insuranceOption
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(shippingServiceName = nil, shippingServiceCost = nil, insuranceCost = nil, shippingType = nil, insuranceOption = nil)
    @shippingServiceName = shippingServiceName
    @shippingServiceCost = shippingServiceCost
    @insuranceCost = insuranceCost
    @shippingType = shippingType
    @insuranceOption = insuranceOption
    @__xmlele_any = nil
  end
end

# {urn:ebay:apis:eBLBaseComponents}ShippingDetailsType
#   getItFast - SOAP::SOAPBoolean
#   insuranceCost - AmountType
#   insuranceOption - InsuranceOptionCodeType
#   internationalShippingServiceOption - InternationalShippingServiceOptionType
#   salesTax - SalesTaxType
#   shippingRateErrorMessage - SOAP::SOAPString
#   shippingServiceOption - ShippingServiceOptionType
#   taxTable - TaxTableType
#   internationalInsuranceCost - AmountType
#   internationalInsuranceOption - InsuranceOptionCodeType
#   cODCost - AmountType
class ShippingDetailsType #:nodoc:
  attr_accessor :getItFast
  attr_accessor :insuranceCost
  attr_accessor :insuranceOption
  attr_accessor :internationalShippingServiceOption
  attr_accessor :salesTax
  attr_accessor :shippingRateErrorMessage
  attr_accessor :shippingServiceOption
  attr_accessor :taxTable
  attr_accessor :internationalInsuranceCost
  attr_accessor :internationalInsuranceOption
  attr_accessor :cODCost
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(getItFast = nil, insuranceCost = nil, insuranceOption = nil, internationalShippingServiceOption = [], salesTax = nil, shippingRateErrorMessage = nil, shippingServiceOption = [], taxTable = nil, internationalInsuranceCost = nil, internationalInsuranceOption = nil, cODCost = nil)
    @getItFast = getItFast
    @insuranceCost = insuranceCost
    @insuranceOption = insuranceOption
    @internationalShippingServiceOption = internationalShippingServiceOption
    @salesTax = salesTax
    @shippingRateErrorMessage = shippingRateErrorMessage
    @shippingServiceOption = shippingServiceOption
    @taxTable = taxTable
    @internationalInsuranceCost = internationalInsuranceCost
    @internationalInsuranceOption = internationalInsuranceOption
    @cODCost = cODCost
    @__xmlele_any = nil
  end
end

# {urn:ebay:apis:eBLBaseComponents}ShippingServiceOptionType
#   shippingInsuranceCost - AmountType
#   shippingServiceName - SOAP::SOAPToken
#   shippingServiceCost - AmountType
#   shippingServiceAdditionalCost - AmountType
#   shippingServicePriority - SOAP::SOAPInt
#   expeditedService - SOAP::SOAPBoolean
#   shippingTimeMin - SOAP::SOAPInt
#   shippingTimeMax - SOAP::SOAPInt
#   shippingSurcharge - AmountType
#   shipsTo - SOAP::SOAPString
class ShippingServiceOptionType #:nodoc:
  attr_accessor :shippingInsuranceCost
  attr_accessor :shippingServiceName
  attr_accessor :shippingServiceCost
  attr_accessor :shippingServiceAdditionalCost
  attr_accessor :shippingServicePriority
  attr_accessor :expeditedService
  attr_accessor :shippingTimeMin
  attr_accessor :shippingTimeMax
  attr_accessor :shippingSurcharge
  attr_accessor :shipsTo
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(shippingInsuranceCost = nil, shippingServiceName = nil, shippingServiceCost = nil, shippingServiceAdditionalCost = nil, shippingServicePriority = nil, expeditedService = nil, shippingTimeMin = nil, shippingTimeMax = nil, shippingSurcharge = nil, shipsTo = [])
    @shippingInsuranceCost = shippingInsuranceCost
    @shippingServiceName = shippingServiceName
    @shippingServiceCost = shippingServiceCost
    @shippingServiceAdditionalCost = shippingServiceAdditionalCost
    @shippingServicePriority = shippingServicePriority
    @expeditedService = expeditedService
    @shippingTimeMin = shippingTimeMin
    @shippingTimeMax = shippingTimeMax
    @shippingSurcharge = shippingSurcharge
    @shipsTo = shipsTo
    @__xmlele_any = nil
  end
end

# {urn:ebay:apis:eBLBaseComponents}SimpleItemArrayType
class SimpleItemArrayType < ::Array #:nodoc:
end

# {urn:ebay:apis:eBLBaseComponents}SimpleItemType
#   bestOfferEnabled - SOAP::SOAPBoolean
#   buyItNowPrice - AmountType
#   description - SOAP::SOAPString
#   itemID - SOAP::SOAPString
#   buyItNowAvailable - SOAP::SOAPBoolean
#   convertedBuyItNowPrice - AmountType
#   endTime - SOAP::SOAPDateTime
#   startTime - SOAP::SOAPDateTime
#   viewItemURLForNaturalSearch - SOAP::SOAPAnyURI
#   listingType - ListingTypeCodeType
#   location - SOAP::SOAPString
#   paymentMethods - BuyerPaymentMethodCodeType
#   galleryURL - SOAP::SOAPAnyURI
#   pictureURL - SOAP::SOAPAnyURI
#   postalCode - SOAP::SOAPString
#   primaryCategoryID - SOAP::SOAPString
#   primaryCategoryName - SOAP::SOAPString
#   quantity - SOAP::SOAPInt
#   seller - SimpleUserType
#   bidCount - SOAP::SOAPInt
#   convertedCurrentPrice - AmountType
#   currentPrice - AmountType
#   highBidder - SimpleUserType
#   listingStatus - ListingStatusCodeType
#   quantitySold - SOAP::SOAPInt
#   reserveMet - SOAP::SOAPBoolean
#   shipToLocations - SOAP::SOAPString
#   site - SiteCodeType
#   timeLeft - SOAP::SOAPDuration
#   title - SOAP::SOAPString
#   shippingCostSummary - ShippingCostSummaryType
#   itemSpecifics - NameValueListArrayType
#   hitCount - SOAP::SOAPLong
#   subtitle - SOAP::SOAPString
#   primaryCategoryIDPath - SOAP::SOAPString
#   secondaryCategoryID - SOAP::SOAPString
#   secondaryCategoryName - SOAP::SOAPString
#   secondaryCategoryIDPath - SOAP::SOAPString
#   charity - CharityType
#   germanMotorsSearchable - SOAP::SOAPBoolean
#   getItFast - SOAP::SOAPBoolean
#   gift - SOAP::SOAPBoolean
#   pictureExists - SOAP::SOAPBoolean
#   recentListing - SOAP::SOAPBoolean
#   storefront - StorefrontType
#   distanceFromBuyer - DistanceType
#   country - CountryCodeType
#   watchCount - SOAP::SOAPInt
#   halfItemCondition - HalfItemConditionCodeType
#   sellerComments - SOAP::SOAPString
#   returnPolicy - ReturnPolicyType
#   minimumToBid - AmountType
#   productID - ProductIDType
#   autoPay - SOAP::SOAPBoolean
#   businessSellerDetails - BusinessSellerDetailsType
#   paymentAllowedSite - SiteCodeType
#   integratedMerchantCreditCardEnabled - SOAP::SOAPBoolean
class SimpleItemType #:nodoc:
  attr_accessor :bestOfferEnabled
  attr_accessor :buyItNowPrice
  attr_accessor :description
  attr_accessor :itemID
  attr_accessor :buyItNowAvailable
  attr_accessor :convertedBuyItNowPrice
  attr_accessor :endTime
  attr_accessor :startTime
  attr_accessor :viewItemURLForNaturalSearch
  attr_accessor :listingType
  attr_accessor :location
  attr_accessor :paymentMethods
  attr_accessor :galleryURL
  attr_accessor :pictureURL
  attr_accessor :postalCode
  attr_accessor :primaryCategoryID
  attr_accessor :primaryCategoryName
  attr_accessor :quantity
  attr_accessor :seller
  attr_accessor :bidCount
  attr_accessor :convertedCurrentPrice
  attr_accessor :currentPrice
  attr_accessor :highBidder
  attr_accessor :listingStatus
  attr_accessor :quantitySold
  attr_accessor :reserveMet
  attr_accessor :shipToLocations
  attr_accessor :site
  attr_accessor :timeLeft
  attr_accessor :title
  attr_accessor :shippingCostSummary
  attr_accessor :itemSpecifics
  attr_accessor :hitCount
  attr_accessor :subtitle
  attr_accessor :primaryCategoryIDPath
  attr_accessor :secondaryCategoryID
  attr_accessor :secondaryCategoryName
  attr_accessor :secondaryCategoryIDPath
  attr_accessor :charity
  attr_accessor :germanMotorsSearchable
  attr_accessor :getItFast
  attr_accessor :gift
  attr_accessor :pictureExists
  attr_accessor :recentListing
  attr_accessor :storefront
  attr_accessor :distanceFromBuyer
  attr_accessor :country
  attr_accessor :watchCount
  attr_accessor :halfItemCondition
  attr_accessor :sellerComments
  attr_accessor :returnPolicy
  attr_accessor :minimumToBid
  attr_accessor :productID
  attr_accessor :autoPay
  attr_accessor :businessSellerDetails
  attr_accessor :paymentAllowedSite
  attr_accessor :integratedMerchantCreditCardEnabled
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(bestOfferEnabled = nil, buyItNowPrice = nil, description = nil, itemID = nil, buyItNowAvailable = nil, convertedBuyItNowPrice = nil, endTime = nil, startTime = nil, viewItemURLForNaturalSearch = nil, listingType = nil, location = nil, paymentMethods = [], galleryURL = nil, pictureURL = [], postalCode = nil, primaryCategoryID = nil, primaryCategoryName = nil, quantity = nil, seller = nil, bidCount = nil, convertedCurrentPrice = nil, currentPrice = nil, highBidder = nil, listingStatus = nil, quantitySold = nil, reserveMet = nil, shipToLocations = [], site = nil, timeLeft = nil, title = nil, shippingCostSummary = nil, itemSpecifics = nil, hitCount = nil, subtitle = nil, primaryCategoryIDPath = nil, secondaryCategoryID = nil, secondaryCategoryName = nil, secondaryCategoryIDPath = nil, charity = nil, germanMotorsSearchable = nil, getItFast = nil, gift = nil, pictureExists = nil, recentListing = nil, storefront = nil, distanceFromBuyer = nil, country = nil, watchCount = nil, halfItemCondition = nil, sellerComments = nil, returnPolicy = nil, minimumToBid = nil, productID = nil, autoPay = nil, businessSellerDetails = nil, paymentAllowedSite = [], integratedMerchantCreditCardEnabled = nil)
    @bestOfferEnabled = bestOfferEnabled
    @buyItNowPrice = buyItNowPrice
    @description = description
    @itemID = itemID
    @buyItNowAvailable = buyItNowAvailable
    @convertedBuyItNowPrice = convertedBuyItNowPrice
    @endTime = endTime
    @startTime = startTime
    @viewItemURLForNaturalSearch = viewItemURLForNaturalSearch
    @listingType = listingType
    @location = location
    @paymentMethods = paymentMethods
    @galleryURL = galleryURL
    @pictureURL = pictureURL
    @postalCode = postalCode
    @primaryCategoryID = primaryCategoryID
    @primaryCategoryName = primaryCategoryName
    @quantity = quantity
    @seller = seller
    @bidCount = bidCount
    @convertedCurrentPrice = convertedCurrentPrice
    @currentPrice = currentPrice
    @highBidder = highBidder
    @listingStatus = listingStatus
    @quantitySold = quantitySold
    @reserveMet = reserveMet
    @shipToLocations = shipToLocations
    @site = site
    @timeLeft = timeLeft
    @title = title
    @shippingCostSummary = shippingCostSummary
    @itemSpecifics = itemSpecifics
    @hitCount = hitCount
    @subtitle = subtitle
    @primaryCategoryIDPath = primaryCategoryIDPath
    @secondaryCategoryID = secondaryCategoryID
    @secondaryCategoryName = secondaryCategoryName
    @secondaryCategoryIDPath = secondaryCategoryIDPath
    @charity = charity
    @germanMotorsSearchable = germanMotorsSearchable
    @getItFast = getItFast
    @gift = gift
    @pictureExists = pictureExists
    @recentListing = recentListing
    @storefront = storefront
    @distanceFromBuyer = distanceFromBuyer
    @country = country
    @watchCount = watchCount
    @halfItemCondition = halfItemCondition
    @sellerComments = sellerComments
    @returnPolicy = returnPolicy
    @minimumToBid = minimumToBid
    @productID = productID
    @autoPay = autoPay
    @businessSellerDetails = businessSellerDetails
    @paymentAllowedSite = paymentAllowedSite
    @integratedMerchantCreditCardEnabled = integratedMerchantCreditCardEnabled
    @__xmlele_any = nil
  end
end

# {urn:ebay:apis:eBLBaseComponents}SimpleUserType
#   userID - SOAP::SOAPString
#   feedbackPrivate - SOAP::SOAPBoolean
#   feedbackRatingStar - FeedbackRatingStarCodeType
#   feedbackScore - SOAP::SOAPInt
#   userAnonymized - SOAP::SOAPBoolean
#   newUser - SOAP::SOAPBoolean
#   registrationDate - SOAP::SOAPDateTime
#   registrationSite - SiteCodeType
#   status - UserStatusCodeType
#   sellerBusinessType - SellerBusinessCodeType
#   storeURL - SOAP::SOAPAnyURI
#   storeName - SOAP::SOAPString
#   sellerItemsURL - SOAP::SOAPAnyURI
#   aboutMeURL - SOAP::SOAPAnyURI
#   myWorldURL - SOAP::SOAPAnyURI
#   myWorldSmallImage - SOAP::SOAPAnyURI
#   myWorldLargeImage - SOAP::SOAPAnyURI
#   reviewsAndGuidesURL - SOAP::SOAPAnyURI
#   feedbackDetailsURL - SOAP::SOAPAnyURI
#   positiveFeedbackPercent - SOAP::SOAPFloat
#   sellerLevel - SellerLevelCodeType
class SimpleUserType #:nodoc:
  attr_accessor :userID
  attr_accessor :feedbackPrivate
  attr_accessor :feedbackRatingStar
  attr_accessor :feedbackScore
  attr_accessor :userAnonymized
  attr_accessor :newUser
  attr_accessor :registrationDate
  attr_accessor :registrationSite
  attr_accessor :status
  attr_accessor :sellerBusinessType
  attr_accessor :storeURL
  attr_accessor :storeName
  attr_accessor :sellerItemsURL
  attr_accessor :aboutMeURL
  attr_accessor :myWorldURL
  attr_accessor :myWorldSmallImage
  attr_accessor :myWorldLargeImage
  attr_accessor :reviewsAndGuidesURL
  attr_accessor :feedbackDetailsURL
  attr_accessor :positiveFeedbackPercent
  attr_accessor :sellerLevel
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(userID = nil, feedbackPrivate = nil, feedbackRatingStar = nil, feedbackScore = nil, userAnonymized = nil, newUser = nil, registrationDate = nil, registrationSite = nil, status = nil, sellerBusinessType = nil, storeURL = nil, storeName = nil, sellerItemsURL = nil, aboutMeURL = nil, myWorldURL = nil, myWorldSmallImage = nil, myWorldLargeImage = nil, reviewsAndGuidesURL = nil, feedbackDetailsURL = nil, positiveFeedbackPercent = nil, sellerLevel = nil)
    @userID = userID
    @feedbackPrivate = feedbackPrivate
    @feedbackRatingStar = feedbackRatingStar
    @feedbackScore = feedbackScore
    @userAnonymized = userAnonymized
    @newUser = newUser
    @registrationDate = registrationDate
    @registrationSite = registrationSite
    @status = status
    @sellerBusinessType = sellerBusinessType
    @storeURL = storeURL
    @storeName = storeName
    @sellerItemsURL = sellerItemsURL
    @aboutMeURL = aboutMeURL
    @myWorldURL = myWorldURL
    @myWorldSmallImage = myWorldSmallImage
    @myWorldLargeImage = myWorldLargeImage
    @reviewsAndGuidesURL = reviewsAndGuidesURL
    @feedbackDetailsURL = feedbackDetailsURL
    @positiveFeedbackPercent = positiveFeedbackPercent
    @sellerLevel = sellerLevel
    @__xmlele_any = nil
  end
end

# {urn:ebay:apis:eBLBaseComponents}StorefrontType
#   storeURL - SOAP::SOAPAnyURI
#   storeName - SOAP::SOAPString
class StorefrontType #:nodoc:
  attr_accessor :storeURL
  attr_accessor :storeName
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(storeURL = nil, storeName = nil)
    @storeURL = storeURL
    @storeName = storeName
    @__xmlele_any = nil
  end
end

# {urn:ebay:apis:eBLBaseComponents}TaxJurisdictionType
#   jurisdictionID - SOAP::SOAPString
#   salesTaxPercent - SOAP::SOAPFloat
#   shippingIncludedInTax - SOAP::SOAPBoolean
class TaxJurisdictionType #:nodoc:
  attr_accessor :jurisdictionID
  attr_accessor :salesTaxPercent
  attr_accessor :shippingIncludedInTax
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(jurisdictionID = nil, salesTaxPercent = nil, shippingIncludedInTax = nil)
    @jurisdictionID = jurisdictionID
    @salesTaxPercent = salesTaxPercent
    @shippingIncludedInTax = shippingIncludedInTax
    @__xmlele_any = nil
  end
end

# {urn:ebay:apis:eBLBaseComponents}TaxTableType
class TaxTableType < ::Array #:nodoc:
end

# {urn:ebay:apis:eBLBaseComponents}VATDetailsType
#   businessSeller - SOAP::SOAPBoolean
#   restrictedToBusiness - SOAP::SOAPBoolean
#   vATPercent - SOAP::SOAPFloat
#   vATSite - SOAP::SOAPString
#   vATID - SOAP::SOAPString
class VATDetailsType #:nodoc:
  attr_accessor :businessSeller
  attr_accessor :restrictedToBusiness
  attr_accessor :vATPercent
  attr_accessor :vATSite
  attr_accessor :vATID
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(businessSeller = nil, restrictedToBusiness = nil, vATPercent = nil, vATSite = nil, vATID = nil)
    @businessSeller = businessSeller
    @restrictedToBusiness = restrictedToBusiness
    @vATPercent = vATPercent
    @vATSite = vATSite
    @vATID = vATID
    @__xmlele_any = nil
  end
end

# {urn:ebay:apis:eBLBaseComponents}AckCodeType
class AckCodeType < ::String #:nodoc:
  CustomCode = AckCodeType.new("CustomCode")
  Failure = AckCodeType.new("Failure")
  PartialFailure = AckCodeType.new("PartialFailure")
  Success = AckCodeType.new("Success")
  Warning = AckCodeType.new("Warning")
end

# {urn:ebay:apis:eBLBaseComponents}ErrorClassificationCodeType #:nodoc:
class ErrorClassificationCodeType < ::String #:nodoc:
  CustomCode = ErrorClassificationCodeType.new("CustomCode") #:nodoc:
  RequestError = ErrorClassificationCodeType.new("RequestError") #:nodoc:
  SystemError = ErrorClassificationCodeType.new("SystemError") #:nodoc:
end

# {urn:ebay:apis:eBLBaseComponents}SeverityCodeType
class SeverityCodeType < ::String #:nodoc:
  CustomCode = SeverityCodeType.new("CustomCode")
  Error = SeverityCodeType.new("Error")
  Warning = SeverityCodeType.new("Warning")
end

# {urn:ebay:apis:eBLBaseComponents}BuyerPaymentMethodCodeType
class BuyerPaymentMethodCodeType < ::String #:nodoc:
  AmEx = BuyerPaymentMethodCodeType.new("AmEx")
  CCAccepted = BuyerPaymentMethodCodeType.new("CCAccepted")
  COD = BuyerPaymentMethodCodeType.new("COD")
  CODPrePayDelivery = BuyerPaymentMethodCodeType.new("CODPrePayDelivery")
  CashInPerson = BuyerPaymentMethodCodeType.new("CashInPerson")
  CashOnPickup = BuyerPaymentMethodCodeType.new("CashOnPickup")
  CustomCode = BuyerPaymentMethodCodeType.new("CustomCode")
  Discover = BuyerPaymentMethodCodeType.new("Discover")
  ELV = BuyerPaymentMethodCodeType.new("ELV")
  Escrow = BuyerPaymentMethodCodeType.new("Escrow")
  LoanCheck = BuyerPaymentMethodCodeType.new("LoanCheck")
  MOCC = BuyerPaymentMethodCodeType.new("MOCC")
  MoneyXferAccepted = BuyerPaymentMethodCodeType.new("MoneyXferAccepted")
  MoneyXferAcceptedInCheckout = BuyerPaymentMethodCodeType.new("MoneyXferAcceptedInCheckout")
  Moneybookers = BuyerPaymentMethodCodeType.new("Moneybookers")
  None = BuyerPaymentMethodCodeType.new("None")
  Other = BuyerPaymentMethodCodeType.new("Other")
  OtherOnlinePayments = BuyerPaymentMethodCodeType.new("OtherOnlinePayments")
  PaisaPayAccepted = BuyerPaymentMethodCodeType.new("PaisaPayAccepted")
  PaisaPayEscrowEMI = BuyerPaymentMethodCodeType.new("PaisaPayEscrowEMI")
  PayPal = BuyerPaymentMethodCodeType.new("PayPal")
  Paymate = BuyerPaymentMethodCodeType.new("Paymate")
  PaymentSeeDescription = BuyerPaymentMethodCodeType.new("PaymentSeeDescription")
  PersonalCheck = BuyerPaymentMethodCodeType.new("PersonalCheck")
  PostalTransfer = BuyerPaymentMethodCodeType.new("PostalTransfer")
  PrePayDelivery = BuyerPaymentMethodCodeType.new("PrePayDelivery")
  ProPay = BuyerPaymentMethodCodeType.new("ProPay")
  VisaMC = BuyerPaymentMethodCodeType.new("VisaMC")
end

# {urn:ebay:apis:eBLBaseComponents}CharityStatusCodeType
class CharityStatusCodeType < ::String #:nodoc:
  CustomCode = CharityStatusCodeType.new("CustomCode")
  NoLongerValid = CharityStatusCodeType.new("NoLongerValid")
  Valid = CharityStatusCodeType.new("Valid")
end

# {urn:ebay:apis:eBLBaseComponents}CommentTypeCodeType
class CommentTypeCodeType < ::String #:nodoc:
  CustomCode = CommentTypeCodeType.new("CustomCode")
  IndependentlyWithdrawn = CommentTypeCodeType.new("IndependentlyWithdrawn")
  Negative = CommentTypeCodeType.new("Negative")
  Neutral = CommentTypeCodeType.new("Neutral")
  Positive = CommentTypeCodeType.new("Positive")
  Withdrawn = CommentTypeCodeType.new("Withdrawn")
end

# {urn:ebay:apis:eBLBaseComponents}CountryCodeType
class CountryCodeType < ::String #:nodoc:
  AA = CountryCodeType.new("AA")
  AD = CountryCodeType.new("AD")
  AE = CountryCodeType.new("AE")
  AF = CountryCodeType.new("AF")
  AG = CountryCodeType.new("AG")
  AI = CountryCodeType.new("AI")
  AL = CountryCodeType.new("AL")
  AM = CountryCodeType.new("AM")
  AN = CountryCodeType.new("AN")
  AO = CountryCodeType.new("AO")
  AQ = CountryCodeType.new("AQ")
  AR = CountryCodeType.new("AR")
  AS = CountryCodeType.new("AS")
  AT = CountryCodeType.new("AT")
  AU = CountryCodeType.new("AU")
  AW = CountryCodeType.new("AW")
  AZ = CountryCodeType.new("AZ")
  BA = CountryCodeType.new("BA")
  BB = CountryCodeType.new("BB")
  BD = CountryCodeType.new("BD")
  BE = CountryCodeType.new("BE")
  BF = CountryCodeType.new("BF")
  BG = CountryCodeType.new("BG")
  BH = CountryCodeType.new("BH")
  BI = CountryCodeType.new("BI")
  BJ = CountryCodeType.new("BJ")
  BM = CountryCodeType.new("BM")
  BN = CountryCodeType.new("BN")
  BO = CountryCodeType.new("BO")
  BR = CountryCodeType.new("BR")
  BS = CountryCodeType.new("BS")
  BT = CountryCodeType.new("BT")
  BV = CountryCodeType.new("BV")
  BW = CountryCodeType.new("BW")
  BY = CountryCodeType.new("BY")
  BZ = CountryCodeType.new("BZ")
  CA = CountryCodeType.new("CA")
  CC = CountryCodeType.new("CC")
  CD = CountryCodeType.new("CD")
  CF = CountryCodeType.new("CF")
  CG = CountryCodeType.new("CG")
  CH = CountryCodeType.new("CH")
  CI = CountryCodeType.new("CI")
  CK = CountryCodeType.new("CK")
  CL = CountryCodeType.new("CL")
  CM = CountryCodeType.new("CM")
  CN = CountryCodeType.new("CN")
  CO = CountryCodeType.new("CO")
  CR = CountryCodeType.new("CR")
  CU = CountryCodeType.new("CU")
  CV = CountryCodeType.new("CV")
  CX = CountryCodeType.new("CX")
  CY = CountryCodeType.new("CY")
  CZ = CountryCodeType.new("CZ")
  C_IO = CountryCodeType.new("IO")
  CustomCode = CountryCodeType.new("CustomCode")
  DE = CountryCodeType.new("DE")
  DJ = CountryCodeType.new("DJ")
  DK = CountryCodeType.new("DK")
  DM = CountryCodeType.new("DM")
  DO = CountryCodeType.new("DO")
  DZ = CountryCodeType.new("DZ")
  EC = CountryCodeType.new("EC")
  EE = CountryCodeType.new("EE")
  EG = CountryCodeType.new("EG")
  EH = CountryCodeType.new("EH")
  ER = CountryCodeType.new("ER")
  ES = CountryCodeType.new("ES")
  ET = CountryCodeType.new("ET")
  FI = CountryCodeType.new("FI")
  FJ = CountryCodeType.new("FJ")
  FK = CountryCodeType.new("FK")
  FM = CountryCodeType.new("FM")
  FO = CountryCodeType.new("FO")
  FR = CountryCodeType.new("FR")
  GA = CountryCodeType.new("GA")
  GB = CountryCodeType.new("GB")
  GD = CountryCodeType.new("GD")
  GE = CountryCodeType.new("GE")
  GF = CountryCodeType.new("GF")
  GH = CountryCodeType.new("GH")
  GI = CountryCodeType.new("GI")
  GL = CountryCodeType.new("GL")
  GM = CountryCodeType.new("GM")
  GN = CountryCodeType.new("GN")
  GP = CountryCodeType.new("GP")
  GQ = CountryCodeType.new("GQ")
  GR = CountryCodeType.new("GR")
  GS = CountryCodeType.new("GS")
  GT = CountryCodeType.new("GT")
  GU = CountryCodeType.new("GU")
  GW = CountryCodeType.new("GW")
  GY = CountryCodeType.new("GY")
  HK = CountryCodeType.new("HK")
  HM = CountryCodeType.new("HM")
  HN = CountryCodeType.new("HN")
  HR = CountryCodeType.new("HR")
  HT = CountryCodeType.new("HT")
  HU = CountryCodeType.new("HU")
  ID = CountryCodeType.new("ID")
  IE = CountryCodeType.new("IE")
  IL = CountryCodeType.new("IL")
  IN = CountryCodeType.new("IN")
  IQ = CountryCodeType.new("IQ")
  IR = CountryCodeType.new("IR")
  IS = CountryCodeType.new("IS")
  IT = CountryCodeType.new("IT")
  JM = CountryCodeType.new("JM")
  JO = CountryCodeType.new("JO")
  JP = CountryCodeType.new("JP")
  KE = CountryCodeType.new("KE")
  KG = CountryCodeType.new("KG")
  KH = CountryCodeType.new("KH")
  KI = CountryCodeType.new("KI")
  KM = CountryCodeType.new("KM")
  KN = CountryCodeType.new("KN")
  KP = CountryCodeType.new("KP")
  KR = CountryCodeType.new("KR")
  KW = CountryCodeType.new("KW")
  KY = CountryCodeType.new("KY")
  KZ = CountryCodeType.new("KZ")
  LA = CountryCodeType.new("LA")
  LB = CountryCodeType.new("LB")
  LC = CountryCodeType.new("LC")
  LI = CountryCodeType.new("LI")
  LK = CountryCodeType.new("LK")
  LR = CountryCodeType.new("LR")
  LS = CountryCodeType.new("LS")
  LT = CountryCodeType.new("LT")
  LU = CountryCodeType.new("LU")
  LV = CountryCodeType.new("LV")
  LY = CountryCodeType.new("LY")
  MA = CountryCodeType.new("MA")
  MC = CountryCodeType.new("MC")
  MD = CountryCodeType.new("MD")
  MG = CountryCodeType.new("MG")
  MH = CountryCodeType.new("MH")
  MK = CountryCodeType.new("MK")
  ML = CountryCodeType.new("ML")
  MM = CountryCodeType.new("MM")
  MN = CountryCodeType.new("MN")
  MO = CountryCodeType.new("MO")
  MP = CountryCodeType.new("MP")
  MQ = CountryCodeType.new("MQ")
  MR = CountryCodeType.new("MR")
  MS = CountryCodeType.new("MS")
  MT = CountryCodeType.new("MT")
  MU = CountryCodeType.new("MU")
  MV = CountryCodeType.new("MV")
  MW = CountryCodeType.new("MW")
  MX = CountryCodeType.new("MX")
  MY = CountryCodeType.new("MY")
  MZ = CountryCodeType.new("MZ")
  NA = CountryCodeType.new("NA")
  NC = CountryCodeType.new("NC")
  NE = CountryCodeType.new("NE")
  NF = CountryCodeType.new("NF")
  NG = CountryCodeType.new("NG")
  NI = CountryCodeType.new("NI")
  NL = CountryCodeType.new("NL")
  NO = CountryCodeType.new("NO")
  NP = CountryCodeType.new("NP")
  NR = CountryCodeType.new("NR")
  NU = CountryCodeType.new("NU")
  NZ = CountryCodeType.new("NZ")
  OM = CountryCodeType.new("OM")
  PA = CountryCodeType.new("PA")
  PE = CountryCodeType.new("PE")
  PF = CountryCodeType.new("PF")
  PG = CountryCodeType.new("PG")
  PH = CountryCodeType.new("PH")
  PK = CountryCodeType.new("PK")
  PL = CountryCodeType.new("PL")
  PM = CountryCodeType.new("PM")
  PN = CountryCodeType.new("PN")
  PR = CountryCodeType.new("PR")
  PS = CountryCodeType.new("PS")
  PT = CountryCodeType.new("PT")
  PW = CountryCodeType.new("PW")
  PY = CountryCodeType.new("PY")
  QA = CountryCodeType.new("QA")
  QM = CountryCodeType.new("QM")
  QN = CountryCodeType.new("QN")
  QO = CountryCodeType.new("QO")
  QP = CountryCodeType.new("QP")
  RE = CountryCodeType.new("RE")
  RO = CountryCodeType.new("RO")
  RU = CountryCodeType.new("RU")
  RW = CountryCodeType.new("RW")
  SA = CountryCodeType.new("SA")
  SB = CountryCodeType.new("SB")
  SC = CountryCodeType.new("SC")
  SD = CountryCodeType.new("SD")
  SE = CountryCodeType.new("SE")
  SG = CountryCodeType.new("SG")
  SH = CountryCodeType.new("SH")
  SI = CountryCodeType.new("SI")
  SJ = CountryCodeType.new("SJ")
  SK = CountryCodeType.new("SK")
  SL = CountryCodeType.new("SL")
  SM = CountryCodeType.new("SM")
  SN = CountryCodeType.new("SN")
  SO = CountryCodeType.new("SO")
  SR = CountryCodeType.new("SR")
  ST = CountryCodeType.new("ST")
  SV = CountryCodeType.new("SV")
  SY = CountryCodeType.new("SY")
  SZ = CountryCodeType.new("SZ")
  TC = CountryCodeType.new("TC")
  TD = CountryCodeType.new("TD")
  TF = CountryCodeType.new("TF")
  TG = CountryCodeType.new("TG")
  TH = CountryCodeType.new("TH")
  TJ = CountryCodeType.new("TJ")
  TK = CountryCodeType.new("TK")
  TM = CountryCodeType.new("TM")
  TN = CountryCodeType.new("TN")
  TO = CountryCodeType.new("TO")
  TP = CountryCodeType.new("TP")
  TR = CountryCodeType.new("TR")
  TT = CountryCodeType.new("TT")
  TV = CountryCodeType.new("TV")
  TW = CountryCodeType.new("TW")
  TZ = CountryCodeType.new("TZ")
  UA = CountryCodeType.new("UA")
  UG = CountryCodeType.new("UG")
  UM = CountryCodeType.new("UM")
  US = CountryCodeType.new("US")
  UY = CountryCodeType.new("UY")
  UZ = CountryCodeType.new("UZ")
  VA = CountryCodeType.new("VA")
  VC = CountryCodeType.new("VC")
  VE = CountryCodeType.new("VE")
  VG = CountryCodeType.new("VG")
  VI = CountryCodeType.new("VI")
  VN = CountryCodeType.new("VN")
  VU = CountryCodeType.new("VU")
  WF = CountryCodeType.new("WF")
  WS = CountryCodeType.new("WS")
  YE = CountryCodeType.new("YE")
  YT = CountryCodeType.new("YT")
  YU = CountryCodeType.new("YU")
  ZA = CountryCodeType.new("ZA")
  ZM = CountryCodeType.new("ZM")
  ZW = CountryCodeType.new("ZW")
end

# {urn:ebay:apis:eBLBaseComponents}CurrencyCodeType
class CurrencyCodeType < ::String #:nodoc:
  ADP = CurrencyCodeType.new("ADP")
  AED = CurrencyCodeType.new("AED")
  AFA = CurrencyCodeType.new("AFA")
  ALL = CurrencyCodeType.new("ALL")
  AMD = CurrencyCodeType.new("AMD")
  ANG = CurrencyCodeType.new("ANG")
  AOA = CurrencyCodeType.new("AOA")
  ARS = CurrencyCodeType.new("ARS")
  ATS = CurrencyCodeType.new("ATS")
  AUD = CurrencyCodeType.new("AUD")
  AWG = CurrencyCodeType.new("AWG")
  AZM = CurrencyCodeType.new("AZM")
  BAM = CurrencyCodeType.new("BAM")
  BBD = CurrencyCodeType.new("BBD")
  BDT = CurrencyCodeType.new("BDT")
  BGL = CurrencyCodeType.new("BGL")
  BGN = CurrencyCodeType.new("BGN")
  BHD = CurrencyCodeType.new("BHD")
  BIF = CurrencyCodeType.new("BIF")
  BMD = CurrencyCodeType.new("BMD")
  BND = CurrencyCodeType.new("BND")
  BOB = CurrencyCodeType.new("BOB")
  BOV = CurrencyCodeType.new("BOV")
  BRL = CurrencyCodeType.new("BRL")
  BSD = CurrencyCodeType.new("BSD")
  BTN = CurrencyCodeType.new("BTN")
  BWP = CurrencyCodeType.new("BWP")
  BYR = CurrencyCodeType.new("BYR")
  BZD = CurrencyCodeType.new("BZD")
  CAD = CurrencyCodeType.new("CAD")
  CDF = CurrencyCodeType.new("CDF")
  CHF = CurrencyCodeType.new("CHF")
  CLF = CurrencyCodeType.new("CLF")
  CLP = CurrencyCodeType.new("CLP")
  CNY = CurrencyCodeType.new("CNY")
  COP = CurrencyCodeType.new("COP")
  CRC = CurrencyCodeType.new("CRC")
  CUP = CurrencyCodeType.new("CUP")
  CVE = CurrencyCodeType.new("CVE")
  CYP = CurrencyCodeType.new("CYP")
  CZK = CurrencyCodeType.new("CZK")
  CustomCode = CurrencyCodeType.new("CustomCode")
  DJF = CurrencyCodeType.new("DJF")
  DKK = CurrencyCodeType.new("DKK")
  DOP = CurrencyCodeType.new("DOP")
  DZD = CurrencyCodeType.new("DZD")
  ECS = CurrencyCodeType.new("ECS")
  ECV = CurrencyCodeType.new("ECV")
  EEK = CurrencyCodeType.new("EEK")
  EGP = CurrencyCodeType.new("EGP")
  ERN = CurrencyCodeType.new("ERN")
  ETB = CurrencyCodeType.new("ETB")
  EUR = CurrencyCodeType.new("EUR")
  FJD = CurrencyCodeType.new("FJD")
  FKP = CurrencyCodeType.new("FKP")
  GBP = CurrencyCodeType.new("GBP")
  GEL = CurrencyCodeType.new("GEL")
  GHC = CurrencyCodeType.new("GHC")
  GIP = CurrencyCodeType.new("GIP")
  GMD = CurrencyCodeType.new("GMD")
  GNF = CurrencyCodeType.new("GNF")
  GTQ = CurrencyCodeType.new("GTQ")
  GWP = CurrencyCodeType.new("GWP")
  GYD = CurrencyCodeType.new("GYD")
  HKD = CurrencyCodeType.new("HKD")
  HNL = CurrencyCodeType.new("HNL")
  HRK = CurrencyCodeType.new("HRK")
  HTG = CurrencyCodeType.new("HTG")
  HUF = CurrencyCodeType.new("HUF")
  IDR = CurrencyCodeType.new("IDR")
  ILS = CurrencyCodeType.new("ILS")
  INR = CurrencyCodeType.new("INR")
  IQD = CurrencyCodeType.new("IQD")
  IRR = CurrencyCodeType.new("IRR")
  ISK = CurrencyCodeType.new("ISK")
  JMD = CurrencyCodeType.new("JMD")
  JOD = CurrencyCodeType.new("JOD")
  JPY = CurrencyCodeType.new("JPY")
  KES = CurrencyCodeType.new("KES")
  KGS = CurrencyCodeType.new("KGS")
  KHR = CurrencyCodeType.new("KHR")
  KMF = CurrencyCodeType.new("KMF")
  KPW = CurrencyCodeType.new("KPW")
  KRW = CurrencyCodeType.new("KRW")
  KWD = CurrencyCodeType.new("KWD")
  KYD = CurrencyCodeType.new("KYD")
  KZT = CurrencyCodeType.new("KZT")
  LAK = CurrencyCodeType.new("LAK")
  LBP = CurrencyCodeType.new("LBP")
  LKR = CurrencyCodeType.new("LKR")
  LRD = CurrencyCodeType.new("LRD")
  LSL = CurrencyCodeType.new("LSL")
  LTL = CurrencyCodeType.new("LTL")
  LVL = CurrencyCodeType.new("LVL")
  LYD = CurrencyCodeType.new("LYD")
  MAD = CurrencyCodeType.new("MAD")
  MDL = CurrencyCodeType.new("MDL")
  MGF = CurrencyCodeType.new("MGF")
  MKD = CurrencyCodeType.new("MKD")
  MMK = CurrencyCodeType.new("MMK")
  MNT = CurrencyCodeType.new("MNT")
  MOP = CurrencyCodeType.new("MOP")
  MRO = CurrencyCodeType.new("MRO")
  MTL = CurrencyCodeType.new("MTL")
  MUR = CurrencyCodeType.new("MUR")
  MVR = CurrencyCodeType.new("MVR")
  MWK = CurrencyCodeType.new("MWK")
  MXN = CurrencyCodeType.new("MXN")
  MXV = CurrencyCodeType.new("MXV")
  MYR = CurrencyCodeType.new("MYR")
  MZM = CurrencyCodeType.new("MZM")
  NAD = CurrencyCodeType.new("NAD")
  NGN = CurrencyCodeType.new("NGN")
  NIO = CurrencyCodeType.new("NIO")
  NOK = CurrencyCodeType.new("NOK")
  NPR = CurrencyCodeType.new("NPR")
  NZD = CurrencyCodeType.new("NZD")
  OMR = CurrencyCodeType.new("OMR")
  PAB = CurrencyCodeType.new("PAB")
  PEN = CurrencyCodeType.new("PEN")
  PGK = CurrencyCodeType.new("PGK")
  PHP = CurrencyCodeType.new("PHP")
  PKR = CurrencyCodeType.new("PKR")
  PLN = CurrencyCodeType.new("PLN")
  PYG = CurrencyCodeType.new("PYG")
  QAR = CurrencyCodeType.new("QAR")
  ROL = CurrencyCodeType.new("ROL")
  RUB = CurrencyCodeType.new("RUB")
  RUR = CurrencyCodeType.new("RUR")
  RWF = CurrencyCodeType.new("RWF")
  SAR = CurrencyCodeType.new("SAR")
  SBD = CurrencyCodeType.new("SBD")
  SCR = CurrencyCodeType.new("SCR")
  SDD = CurrencyCodeType.new("SDD")
  SEK = CurrencyCodeType.new("SEK")
  SGD = CurrencyCodeType.new("SGD")
  SHP = CurrencyCodeType.new("SHP")
  SIT = CurrencyCodeType.new("SIT")
  SKK = CurrencyCodeType.new("SKK")
  SLL = CurrencyCodeType.new("SLL")
  SOS = CurrencyCodeType.new("SOS")
  SRG = CurrencyCodeType.new("SRG")
  STD = CurrencyCodeType.new("STD")
  SVC = CurrencyCodeType.new("SVC")
  SYP = CurrencyCodeType.new("SYP")
  SZL = CurrencyCodeType.new("SZL")
  THB = CurrencyCodeType.new("THB")
  TJS = CurrencyCodeType.new("TJS")
  TMM = CurrencyCodeType.new("TMM")
  TND = CurrencyCodeType.new("TND")
  TOP = CurrencyCodeType.new("TOP")
  TPE = CurrencyCodeType.new("TPE")
  TRL = CurrencyCodeType.new("TRL")
  TTD = CurrencyCodeType.new("TTD")
  TWD = CurrencyCodeType.new("TWD")
  TZS = CurrencyCodeType.new("TZS")
  UAH = CurrencyCodeType.new("UAH")
  UGX = CurrencyCodeType.new("UGX")
  USD = CurrencyCodeType.new("USD")
  USN = CurrencyCodeType.new("USN")
  USS = CurrencyCodeType.new("USS")
  UYU = CurrencyCodeType.new("UYU")
  UZS = CurrencyCodeType.new("UZS")
  VEB = CurrencyCodeType.new("VEB")
  VND = CurrencyCodeType.new("VND")
  VUV = CurrencyCodeType.new("VUV")
  WST = CurrencyCodeType.new("WST")
  XAF = CurrencyCodeType.new("XAF")
  XCD = CurrencyCodeType.new("XCD")
  XOF = CurrencyCodeType.new("XOF")
  XPF = CurrencyCodeType.new("XPF")
  YER = CurrencyCodeType.new("YER")
  YUM = CurrencyCodeType.new("YUM")
  ZAR = CurrencyCodeType.new("ZAR")
  ZMK = CurrencyCodeType.new("ZMK")
  ZWD = CurrencyCodeType.new("ZWD")
end

# {urn:ebay:apis:eBLBaseComponents}ExcludeFlagCodeType
class ExcludeFlagCodeType < ::String #:nodoc:
  AutoPay = ExcludeFlagCodeType.new("AutoPay")
end

# {urn:ebay:apis:eBLBaseComponents}ExternalProductCodeType
class ExternalProductCodeType < ::String #:nodoc:
  CustomCode = ExternalProductCodeType.new("CustomCode")
  EAN = ExternalProductCodeType.new("EAN")
  ISBN = ExternalProductCodeType.new("ISBN")
  Keywords = ExternalProductCodeType.new("Keywords")
  MPN = ExternalProductCodeType.new("MPN")
  ProductID = ExternalProductCodeType.new("ProductID")
  UPC = ExternalProductCodeType.new("UPC")
end

# {urn:ebay:apis:eBLBaseComponents}FeedbackRatingDetailCodeType
class FeedbackRatingDetailCodeType < ::String #:nodoc:
  Communication = FeedbackRatingDetailCodeType.new("Communication")
  CustomCode = FeedbackRatingDetailCodeType.new("CustomCode")
  ItemAsDescribed = FeedbackRatingDetailCodeType.new("ItemAsDescribed")
  ShippingAndHandlingCharges = FeedbackRatingDetailCodeType.new("ShippingAndHandlingCharges")
  ShippingTime = FeedbackRatingDetailCodeType.new("ShippingTime")
end

# {urn:ebay:apis:eBLBaseComponents}FeedbackRatingStarCodeType
class FeedbackRatingStarCodeType < ::String #:nodoc:
  Blue = FeedbackRatingStarCodeType.new("Blue")
  CustomCode = FeedbackRatingStarCodeType.new("CustomCode")
  Green = FeedbackRatingStarCodeType.new("Green")
  None = FeedbackRatingStarCodeType.new("None")
  Purple = FeedbackRatingStarCodeType.new("Purple")
  PurpleShooting = FeedbackRatingStarCodeType.new("PurpleShooting")
  Red = FeedbackRatingStarCodeType.new("Red")
  RedShooting = FeedbackRatingStarCodeType.new("RedShooting")
  Turquoise = FeedbackRatingStarCodeType.new("Turquoise")
  TurquoiseShooting = FeedbackRatingStarCodeType.new("TurquoiseShooting")
  Yellow = FeedbackRatingStarCodeType.new("Yellow")
  YellowShooting = FeedbackRatingStarCodeType.new("YellowShooting")
end

# {urn:ebay:apis:eBLBaseComponents}HalfItemConditionCodeType
class HalfItemConditionCodeType < ::String #:nodoc:
  Acceptable = HalfItemConditionCodeType.new("Acceptable")
  BrandNew = HalfItemConditionCodeType.new("BrandNew")
  CustomCode = HalfItemConditionCodeType.new("CustomCode")
  Good = HalfItemConditionCodeType.new("Good")
  LikeNew = HalfItemConditionCodeType.new("LikeNew")
  Used = HalfItemConditionCodeType.new("Used")
  VeryGood = HalfItemConditionCodeType.new("VeryGood")
end

# {urn:ebay:apis:eBLBaseComponents}InsuranceOptionCodeType
class InsuranceOptionCodeType < ::String #:nodoc:
  CustomCode = InsuranceOptionCodeType.new("CustomCode")
  IncludedInShippingHandling = InsuranceOptionCodeType.new("IncludedInShippingHandling")
  NotOffered = InsuranceOptionCodeType.new("NotOffered")
  NotOfferedOnSite = InsuranceOptionCodeType.new("NotOfferedOnSite")
  Optional = InsuranceOptionCodeType.new("Optional")
  Required = InsuranceOptionCodeType.new("Required")
end

# {urn:ebay:apis:eBLBaseComponents}ItemConditionCodeType
class ItemConditionCodeType < ::String #:nodoc:
  CustomCode = ItemConditionCodeType.new("CustomCode")
  New = ItemConditionCodeType.new("New")
  Used = ItemConditionCodeType.new("Used")
end

# {urn:ebay:apis:eBLBaseComponents}ItemLocationRegionCodeType
class ItemLocationRegionCodeType < ::String #:nodoc:
  Canada = ItemLocationRegionCodeType.new("Canada")
  CanadaFrench = ItemLocationRegionCodeType.new("CanadaFrench")
  CustomCode = ItemLocationRegionCodeType.new("CustomCode")
  Europe = ItemLocationRegionCodeType.new("Europe")
  NorthAmerica = ItemLocationRegionCodeType.new("NorthAmerica")
  UKIreland = ItemLocationRegionCodeType.new("UKIreland")
  Worldwide = ItemLocationRegionCodeType.new("Worldwide")
end

# {urn:ebay:apis:eBLBaseComponents}ItemTypeCodeType
class ItemTypeCodeType < ::String #:nodoc:
  AdFormat = ItemTypeCodeType.new("AdFormat")
  AllFixedPriceItemTypes = ItemTypeCodeType.new("AllFixedPriceItemTypes")
  AllItemTypes = ItemTypeCodeType.new("AllItemTypes")
  AllItems = ItemTypeCodeType.new("AllItems")
  AuctionItemsOnly = ItemTypeCodeType.new("AuctionItemsOnly")
  ClassifiedItemsOnly = ItemTypeCodeType.new("ClassifiedItemsOnly") #:nodoc:
  CustomCode = ItemTypeCodeType.new("CustomCode")
  ExcludeStoreInventory = ItemTypeCodeType.new("ExcludeStoreInventory")
  FixedPriceExcludeStoreInventory = ItemTypeCodeType.new("FixedPriceExcludeStoreInventory")
  FixedPricedItem = ItemTypeCodeType.new("FixedPricedItem")
  StoreInventoryOnly = ItemTypeCodeType.new("StoreInventoryOnly")
end

# {urn:ebay:apis:eBLBaseComponents}ListingStatusCodeType
class ListingStatusCodeType < ::String #:nodoc:
  Active = ListingStatusCodeType.new("Active")
  Completed = ListingStatusCodeType.new("Completed")
  CustomCode = ListingStatusCodeType.new("CustomCode")
  Ended = ListingStatusCodeType.new("Ended")
end

# {urn:ebay:apis:eBLBaseComponents}ListingTypeCodeType
class ListingTypeCodeType < ::String #:nodoc:
  AdType = ListingTypeCodeType.new("AdType")
  Auction = ListingTypeCodeType.new("Auction")
  Chinese = ListingTypeCodeType.new("Chinese")
  CustomCode = ListingTypeCodeType.new("CustomCode")
  Dutch = ListingTypeCodeType.new("Dutch")
  Express = ListingTypeCodeType.new("Express")
  FixedPriceItem = ListingTypeCodeType.new("FixedPriceItem")
  Half = ListingTypeCodeType.new("Half")
  LeadGeneration = ListingTypeCodeType.new("LeadGeneration")
  Live = ListingTypeCodeType.new("Live")
  PersonalOffer = ListingTypeCodeType.new("PersonalOffer")
  StoresFixedPrice = ListingTypeCodeType.new("StoresFixedPrice")
  Unknown = ListingTypeCodeType.new("Unknown")
end

# {urn:ebay:apis:eBLBaseComponents}PaymentMethodSearchCodeType
class PaymentMethodSearchCodeType < ::String #:nodoc:
  CustomCode = PaymentMethodSearchCodeType.new("CustomCode")
  PaisaPay = PaymentMethodSearchCodeType.new("PaisaPay")
  PaisaPayEscrowEMI = PaymentMethodSearchCodeType.new("PaisaPayEscrowEMI")
  PayPal = PaymentMethodSearchCodeType.new("PayPal")
  PayPalOrPaisaPay = PaymentMethodSearchCodeType.new("PayPalOrPaisaPay")
end

# {urn:ebay:apis:eBLBaseComponents}PreferredLocationCodeType
class PreferredLocationCodeType < ::String #:nodoc:
  AvailableInCountryImplied = PreferredLocationCodeType.new("AvailableInCountryImplied")
  BelgiumListing = PreferredLocationCodeType.new("BelgiumListing")
  CustomCode = PreferredLocationCodeType.new("CustomCode")
  ListedInCurrencyImplied = PreferredLocationCodeType.new("ListedInCurrencyImplied")
  LocatedInCountryImplied = PreferredLocationCodeType.new("LocatedInCountryImplied")
  SiteImplied = PreferredLocationCodeType.new("SiteImplied")
end

# {urn:ebay:apis:eBLBaseComponents}ProductIDCodeType
class ProductIDCodeType < ::String #:nodoc:
  CatalogItem = ProductIDCodeType.new("CatalogItem")
  CustomCode = ProductIDCodeType.new("CustomCode")
  EAN = ProductIDCodeType.new("EAN")
  ISBN = ProductIDCodeType.new("ISBN")
  Keywords = ProductIDCodeType.new("Keywords")
  MPN = ProductIDCodeType.new("MPN")
  Reference = ProductIDCodeType.new("Reference")
  UPC = ProductIDCodeType.new("UPC")
end

# {urn:ebay:apis:eBLBaseComponents}ProductSortCodeType
class ProductSortCodeType < ::String #:nodoc:
  CustomCode = ProductSortCodeType.new("CustomCode")
  ItemCount = ProductSortCodeType.new("ItemCount")
  Popularity = ProductSortCodeType.new("Popularity")
  Rating = ProductSortCodeType.new("Rating")
  ReviewCount = ProductSortCodeType.new("ReviewCount")
  Title = ProductSortCodeType.new("Title")
end

# {urn:ebay:apis:eBLBaseComponents}ProductStateCodeType
class ProductStateCodeType < ::String #:nodoc:
  CustomCode = ProductStateCodeType.new("CustomCode")
  Delete = ProductStateCodeType.new("Delete")
  Merge = ProductStateCodeType.new("Merge")
  Update = ProductStateCodeType.new("Update")
  UpdateMajor = ProductStateCodeType.new("UpdateMajor")
  UpdateNoDetails = ProductStateCodeType.new("UpdateNoDetails")
end

# {urn:ebay:apis:eBLBaseComponents}QuantityOperatorCodeType
class QuantityOperatorCodeType < ::String #:nodoc:
  CustomCode = QuantityOperatorCodeType.new("CustomCode")
  Equal = QuantityOperatorCodeType.new("Equal")
  GreaterThan = QuantityOperatorCodeType.new("GreaterThan")
  GreaterThanOrEqual = QuantityOperatorCodeType.new("GreaterThanOrEqual")
  LessThan = QuantityOperatorCodeType.new("LessThan")
  LessThanOrEqual = QuantityOperatorCodeType.new("LessThanOrEqual")
end

# {urn:ebay:apis:eBLBaseComponents}ReviewSortCodeType
class ReviewSortCodeType < ::String #:nodoc:
  CreationTime = ReviewSortCodeType.new("CreationTime")
  CustomCode = ReviewSortCodeType.new("CustomCode")
end

# {urn:ebay:apis:eBLBaseComponents}SearchFlagCodeType
class SearchFlagCodeType < ::String #:nodoc:
  AutoPay = SearchFlagCodeType.new("AutoPay")
  Charity = SearchFlagCodeType.new("Charity")
  CustomCode = SearchFlagCodeType.new("CustomCode")
  DigitalDelivery = SearchFlagCodeType.new("DigitalDelivery")
  Featured = SearchFlagCodeType.new("Featured")
  FreeShipping = SearchFlagCodeType.new("FreeShipping")
  Gallery = SearchFlagCodeType.new("Gallery")
  GermanMotorsSearchable = SearchFlagCodeType.new("GermanMotorsSearchable")
  GetItFast = SearchFlagCodeType.new("GetItFast")
  Gift = SearchFlagCodeType.new("Gift")
  LocalSearch = SearchFlagCodeType.new("LocalSearch")
  Lot = SearchFlagCodeType.new("Lot")
  NowAndNew = SearchFlagCodeType.new("NowAndNew")
  Picture = SearchFlagCodeType.new("Picture")
  SuperFeatured = SearchFlagCodeType.new("SuperFeatured")
end

# {urn:ebay:apis:eBLBaseComponents}SellerBusinessCodeType
class SellerBusinessCodeType < ::String #:nodoc:
  Commercial = SellerBusinessCodeType.new("Commercial")
  CustomCode = SellerBusinessCodeType.new("CustomCode")
  Private = SellerBusinessCodeType.new("Private")
  Undefined = SellerBusinessCodeType.new("Undefined")
end

# {urn:ebay:apis:eBLBaseComponents}SellerLevelCodeType
class SellerLevelCodeType < ::String #:nodoc:
  Bronze = SellerLevelCodeType.new("Bronze")
  CustomCode = SellerLevelCodeType.new("CustomCode")
  Gold = SellerLevelCodeType.new("Gold")
  None = SellerLevelCodeType.new("None")
  Platinum = SellerLevelCodeType.new("Platinum")
  Silver = SellerLevelCodeType.new("Silver")
  Titanium = SellerLevelCodeType.new("Titanium")
end

# {urn:ebay:apis:eBLBaseComponents}ShippingTypeCodeType
class ShippingTypeCodeType < ::String #:nodoc:
  Calculated = ShippingTypeCodeType.new("Calculated")
  CalculatedDomesticFlatInternational = ShippingTypeCodeType.new("CalculatedDomesticFlatInternational")
  CustomCode = ShippingTypeCodeType.new("CustomCode")
  Flat = ShippingTypeCodeType.new("Flat")
  FlatDomesticCalculatedInternational = ShippingTypeCodeType.new("FlatDomesticCalculatedInternational")
  Free = ShippingTypeCodeType.new("Free")
  Freight = ShippingTypeCodeType.new("Freight")
  NotSpecified = ShippingTypeCodeType.new("NotSpecified")
end

# {urn:ebay:apis:eBLBaseComponents}SimpleItemSortCodeType
class SimpleItemSortCodeType < ::String #:nodoc:
  BestMatch = SimpleItemSortCodeType.new("BestMatch")
  BestMatchCategoryGroup = SimpleItemSortCodeType.new("BestMatchCategoryGroup")
  BestMatchPlusEndTime = SimpleItemSortCodeType.new("BestMatchPlusEndTime")
  BestMatchPlusPrice = SimpleItemSortCodeType.new("BestMatchPlusPrice")
  BidCount = SimpleItemSortCodeType.new("BidCount")
  Country = SimpleItemSortCodeType.new("Country")
  CurrentBid = SimpleItemSortCodeType.new("CurrentBid")
  CustomCode = SimpleItemSortCodeType.new("CustomCode")
  Distance = SimpleItemSortCodeType.new("Distance")
  EndTime = SimpleItemSortCodeType.new("EndTime")
  PricePlusShipping = SimpleItemSortCodeType.new("PricePlusShipping")
  StartDate = SimpleItemSortCodeType.new("StartDate")
end

# {urn:ebay:apis:eBLBaseComponents}SiteCodeType
class SiteCodeType < ::String #:nodoc:
  Australia = SiteCodeType.new("Australia")
  Austria = SiteCodeType.new("Austria")
  Belgium_Dutch = SiteCodeType.new("Belgium_Dutch")
  Belgium_French = SiteCodeType.new("Belgium_French")
  Canada = SiteCodeType.new("Canada")
  CanadaFrench = SiteCodeType.new("CanadaFrench")
  China = SiteCodeType.new("China")
  CustomCode = SiteCodeType.new("CustomCode")
  EBayMotors = SiteCodeType.new("eBayMotors")
  France = SiteCodeType.new("France")
  Germany = SiteCodeType.new("Germany")
  HongKong = SiteCodeType.new("HongKong")
  India = SiteCodeType.new("India")
  Ireland = SiteCodeType.new("Ireland")
  Italy = SiteCodeType.new("Italy")
  Malaysia = SiteCodeType.new("Malaysia")
  Netherlands = SiteCodeType.new("Netherlands")
  Philippines = SiteCodeType.new("Philippines")
  Poland = SiteCodeType.new("Poland")
  Singapore = SiteCodeType.new("Singapore")
  Spain = SiteCodeType.new("Spain")
  Sweden = SiteCodeType.new("Sweden")
  Switzerland = SiteCodeType.new("Switzerland")
  Taiwan = SiteCodeType.new("Taiwan")
  UK = SiteCodeType.new("UK")
  US = SiteCodeType.new("US")
end

# {urn:ebay:apis:eBLBaseComponents}SortOrderCodeType
class SortOrderCodeType < ::String #:nodoc:
  Ascending = SortOrderCodeType.new("Ascending")
  CustomCode = SortOrderCodeType.new("CustomCode")
  Descending = SortOrderCodeType.new("Descending")
end

# {urn:ebay:apis:eBLBaseComponents}StoreSearchCodeType
class StoreSearchCodeType < ::String #:nodoc:
  AllItemsInTheStore = StoreSearchCodeType.new("AllItemsInTheStore")
  AuctionItemsInTheStore = StoreSearchCodeType.new("AuctionItemsInTheStore")
  BuyItNowItemsInAllStores = StoreSearchCodeType.new("BuyItNowItemsInAllStores")
  BuyItNowItemsInTheStore = StoreSearchCodeType.new("BuyItNowItemsInTheStore")
  CustomCode = StoreSearchCodeType.new("CustomCode")
end

# {urn:ebay:apis:eBLBaseComponents}TradingRoleCodeType
class TradingRoleCodeType < ::String #:nodoc:
  Buyer = TradingRoleCodeType.new("Buyer")
  CustomCode = TradingRoleCodeType.new("CustomCode")
  Seller = TradingRoleCodeType.new("Seller")
end

# {urn:ebay:apis:eBLBaseComponents}UserStatusCodeType
class UserStatusCodeType < ::String #:nodoc:
  AccountOnHold = UserStatusCodeType.new("AccountOnHold")
  Confirmed = UserStatusCodeType.new("Confirmed")
  CreditCardVerify = UserStatusCodeType.new("CreditCardVerify")
  CreditCardVerifyHalfOptIn = UserStatusCodeType.new("CreditCardVerifyHalfOptIn")
  CustomCode = UserStatusCodeType.new("CustomCode")
  Deleted = UserStatusCodeType.new("Deleted")
  Ghost = UserStatusCodeType.new("Ghost")
  InMaintenance = UserStatusCodeType.new("InMaintenance")
  Merged = UserStatusCodeType.new("Merged")
  RegistrationCodeMailOut = UserStatusCodeType.new("RegistrationCodeMailOut")
  Suspended = UserStatusCodeType.new("Suspended")
  TermPending = UserStatusCodeType.new("TermPending")
  Unconfirmed = UserStatusCodeType.new("Unconfirmed")
  UnconfirmedExpress = UserStatusCodeType.new("UnconfirmedExpress")
  UnconfirmedHalfOptIn = UserStatusCodeType.new("UnconfirmedHalfOptIn")
  Unknown = UserStatusCodeType.new("Unknown")
end
