module EbayShopping

  class Session

    attr_reader :config

    def initialize(config_file = nil, sandbox = false)
      env = sandbox ? Config::SANDBOX : Config::PRODUCTION
      @config = Config.new(env,config_file)
    end

    def sandbox?
      return @config.env.to_sym == Config::SANDBOX
    end

    def production?
      return @config.env.to_sym == Config::PRODUCTION
    end

    # start - Ebay Shopping Methods
    def find_half_products_by_keyword( keywords, options = {} )
      options.merge!({:QueryKeywords => keywords})
      req = EbayShopping::Request.new(self,:FindHalfProducts,options)
      req.execute
    end

    def find_half_products_by_id( ids, options = {} )
      options.merge!({:Reference => ids})
      req = EbayShopping::Request.new(self,:FindHalfProducts,options)
      req.execute
    end

    def find_half_products_by_isbn( isbn, options = {} )
      options.merge!({:isbn => isbn})
      req = EbayShopping::Request.new(self,:FindHalfProducts,options)
      req.execute
    end

    def find_items_by_keyword( keywords, options = {} )
      options.merge!({:QueryKeywords => keywords})
      req = EbayShopping::Request.new(self,:FindItems,options)
      req.execute
    end

    def find_items_by_seller( ids, options = {} )
      options.merge!({:SellerID => ids})
      req = EbayShopping::Request.new(self,:FindItems,options)
      req.execute
    end

    def find_items_advanced_by_keyword( keywords, options = {} )
      options.merge!({:QueryKeywords => keywords})
      req = EbayShopping::Request.new(self,:FindItemsAdvanced,options)
      req.execute
    end

    def find_items_advanced_by_isbn( isbn, options = {} )
      p = ProductIDType.new(isbn);
      p.xmlattr_type = ProductIDCodeType::ISBN if isbn.length == 10
      p.xmlattr_type = ProductIDCodeType::EAN if isbn.length == 13
      options.merge!({:ProductID => p})
      req = EbayShopping::Request.new(self,:FindItemsAdvanced,options)
      req.execute
    end

    def find_items_advanced_by_product_id( id, options = {} )
      #options.merge!({:isbn => isbn})
      p = ProductIDType.new(id);
      p.xmlattr_type = ProductIDCodeType::Reference
      options.merge!({:ProductID => p})
      req = EbayShopping::Request.new(self,:FindItemsAdvanced,options)
      req.execute
    end

    def find_products_by_keyword( keywords, options = {} )
      options.merge!({:QueryKeywords => keywords})
      req = EbayShopping::Request.new(self,:FindProducts,options)
      req.execute
    end

    def find_products_by_isbn( isbn, options = {} )
      p = ProductIDType.new(isbn);
      p.xmlattr_type = ProductIDCodeType::ISBN if isbn.length == 10
      p.xmlattr_type = ProductIDCodeType::EAN if isbn.length == 13
      options.merge!({:ProductID => p})
      req = EbayShopping::Request.new(self,:FindProducts,options)
      req.execute
    end

    def find_products_by_product_id( id, options = {} )
      #options.merge!({:isbn => isbn})
      p = ProductIDType.new(id);
      p.xmlattr_type = ProductIDCodeType::Reference
      options.merge!({:ProductID => p})
      req = EbayShopping::Request.new(self,:FindProducts,options)
      req.execute
    end

    # end - Ebay Shopping Methods
  end
end
