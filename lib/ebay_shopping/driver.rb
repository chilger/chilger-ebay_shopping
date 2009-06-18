#require 'soap/rpc/driver'
#require 'type_defs'
#require 'mapping_registry'

class EbayShoppingAPIInterface < ::SOAP::RPC::Driver #:nodoc:
  DefaultEndpointUrl = "http://open.api.ebay.com/shopping"

  Methods = [
    [ "",
      "findHalfProducts",
      [ ["in","FindHalfProductsRequest", ["::SOAP::SOAPElement", "urn:ebay:apis:eBLBaseComponents", "FindHalfProductsRequest"]],
        ["out", "FindHalfProductsResponse", ["::SOAP::SOAPElement", "urn:ebay:apis:eBLBaseComponents", "FindHalfProductsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use =>  :literal,
        :faults => {} }
    ],
    [ "",
      "findItems",
      [ ["in", "FindItemsRequest", ["::SOAP::SOAPElement", "urn:ebay:apis:eBLBaseComponents", "FindItemsRequest"]],
        ["out", "FindItemsResponse", ["::SOAP::SOAPElement", "urn:ebay:apis:eBLBaseComponents", "FindItemsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "findItemsAdvanced",
      [ ["in", "FindItemsAdvancedRequest", ["::SOAP::SOAPElement", "urn:ebay:apis:eBLBaseComponents", "FindItemsAdvancedRequest"]],
        ["out", "FindItemsAdvancedResponse", ["::SOAP::SOAPElement", "urn:ebay:apis:eBLBaseComponents", "FindItemsAdvancedResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "findPopularItems",
      [ ["in", "FindPopularItemsRequest", ["::SOAP::SOAPElement", "urn:ebay:apis:eBLBaseComponents", "FindPopularItemsRequest"]],
        ["out", "FindPopularItemsResponse", ["::SOAP::SOAPElement", "urn:ebay:apis:eBLBaseComponents", "FindPopularItemsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "findPopularSearches",
      [ ["in", "FindPopularSearchesRequest", ["::SOAP::SOAPElement", "urn:ebay:apis:eBLBaseComponents", "FindPopularSearchesRequest"]],
        ["out", "FindPopularSearchesResponse", ["::SOAP::SOAPElement", "urn:ebay:apis:eBLBaseComponents", "FindPopularSearchesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "findProducts",
      [ ["in", "FindProductsRequest", ["::SOAP::SOAPElement", "urn:ebay:apis:eBLBaseComponents", "FindProductsRequest"]],
        ["out", "FindProductsResponse", ["::SOAP::SOAPElement", "urn:ebay:apis:eBLBaseComponents", "FindProductsResponse"]] ],
      { :request_style => :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "findReviewsAndGuides",
      [ ["in", "FindReviewsAndGuidesRequest", ["::SOAP::SOAPElement", "urn:ebay:apis:eBLBaseComponents", "FindReviewsAndGuidesRequest"]],
        ["out", "FindReviewsAndGuidesResponse", ["::SOAP::SOAPElement", "urn:ebay:apis:eBLBaseComponents", "FindReviewsAndGuidesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "getCategoryInfo",
      [ ["in", "GetCategoryInfoRequest", ["::SOAP::SOAPElement", "urn:ebay:apis:eBLBaseComponents", "GetCategoryInfoRequest"]],
        ["out", "GetCategoryInfoResponse", ["::SOAP::SOAPElement", "urn:ebay:apis:eBLBaseComponents", "GetCategoryInfoResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "getItemStatus",
      [ ["in", "GetItemStatusRequest", ["::SOAP::SOAPElement", "urn:ebay:apis:eBLBaseComponents", "GetItemStatusRequest"]],
        ["out", "GetItemStatusResponse", ["::SOAP::SOAPElement", "urn:ebay:apis:eBLBaseComponents", "GetItemStatusResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "getMultipleItems",
      [ ["in", "GetMultipleItemsRequest", ["::SOAP::SOAPElement", "urn:ebay:apis:eBLBaseComponents", "GetMultipleItemsRequest"]],
        ["out", "GetMultipleItemsResponse", ["::SOAP::SOAPElement", "urn:ebay:apis:eBLBaseComponents", "GetMultipleItemsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "getShippingCosts",
      [ ["in", "GetShippingCostsRequest", ["::SOAP::SOAPElement", "urn:ebay:apis:eBLBaseComponents", "GetShippingCostsRequest"]],
        ["out", "GetShippingCostsResponse", ["::SOAP::SOAPElement", "urn:ebay:apis:eBLBaseComponents", "GetShippingCostsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "getSingleItem",
      [ ["in", "GetSingleItemRequest", ["::SOAP::SOAPElement", "urn:ebay:apis:eBLBaseComponents", "GetSingleItemRequest"]],
        ["out", "GetSingleItemResponse", ["::SOAP::SOAPElement", "urn:ebay:apis:eBLBaseComponents", "GetSingleItemResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "getUserProfile",
      [ ["in", "GetUserProfileRequest", ["::SOAP::SOAPElement", "urn:ebay:apis:eBLBaseComponents", "GetUserProfileRequest"]],
        ["out", "GetUserProfileResponse", ["::SOAP::SOAPElement", "urn:ebay:apis:eBLBaseComponents", "GetUserProfileResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "geteBayTime",
      [ ["in", "GeteBayTimeRequest", ["::SOAP::SOAPElement", "urn:ebay:apis:eBLBaseComponents", "GeteBayTimeRequest"]],
        ["out", "GeteBayTimeResponse", ["::SOAP::SOAPElement", "urn:ebay:apis:eBLBaseComponents", "GeteBayTimeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = MappingRegistry::EncodedRegistry
    self.literal_mapping_registry = MappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last

      # From http://www.pluitsolutions.com
      # Article: http://www.pluitsolutions.com/2007/08/10/remove-n1-namespace-for-soap4r/
      opt.merge!({
        :use_default_namespace => true,
        :attributeformdefault => true
      })

      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end
