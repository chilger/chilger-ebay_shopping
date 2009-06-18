module QueryKeywords #:nodoc:

  def self.included(base)
    base.class_eval do
      def queryKeywords=(k)
        @queryKeywords = URI.encode(k).gsub('+','%20')
      end
    end
  end

end

module ItemSort #:nodoc:

  def self.included(base)
    base.class_eval do 

      def itemSort=(s)
        if s.is_a?(SimpleItemSortCodeType)
          @itemSort = s
        elsif s.is_a?(String)
          #
          # This is strange. If you pass a string
          # with a lower case first letter to 
          # const_defind?, it raises:
          #  NameError: wrong constant name '<arg>'
          #
          # This is why the rescue clause is included
          #
          if (SimpleItemSortCodeType.const_defined?(s) rescue nil)
            SimpleItemSortCodeType.const_get(s.to_sym)
          else
            raise ArgumentError, 
                "{ItemSort value '#{s}' is invalid, must be in: [#{SimpleItemSortCodeType.constants.join(',')}]}"
          end
        else
          raise ArgumentError, "ItemSort must be a String"
        end
      end
    end
  end
end

module SortOrder #:nodoc: 

  def self.included(base)
    base.class_eval do 

      def sortOrder=(s)
        if s.is_a?(SortOrderCodeType)
          @itemSort = s
        elsif s.is_a?(String)
          #
          # This is strange. If you pass a string
          # with a lower case first letter to 
          # const_defind?, it raises:
          #  NameError: wrong constant name '<arg>'
          #
          # This is why the rescue clause is included
          #
          if (SortOrderCodeType.const_defined?(s) rescue nil)
            SortOrderCodeType.const_get(s.to_sym)
          else
            raise ArgumentError, 
                %q{SortOrder value '#{s}' is invalid, must be in: 
                [#{SortOrderCodeType.constants.join(',')}]}
          end
        else
          raise ArgumentError, "SortOrder must be a String"
        end
      end
    end
  end
end

module ProductType  #:nodoc:

  def self.included(base)
    base.class_eval do 

      def isbn=(s)
        pt = ProductIDType.new(s)
        pt.xmlattr_type = ProductIDCodeType::ISBN
        @productID = pt
      end

      def upc=(s)
        pt = ProductIDType.new(s)
        pt.xmlattr_type = ProductIDCodeType::UPC
        @productID = pt
      end

      def ean=(s)
        pt = ProductIDType.new(s)
        pt.xmlattr_type = ProductIDCodeType::EAN
        @productID = pt
      end

      def reference=(s)
        pt = ProductIDType.new(s)
        pt.xmlattr_type = ProductIDCodeType::Reference
        @productID = pt
      end

    end
  end
end
FindHalfProductsRequestType.send(:include, SortOrder)
FindHalfProductsRequestType.send(:include, ProductType)
  
FindItemsRequestType.send(:include, QueryKeywords)
FindItemsRequestType.send(:include, ItemSort)
FindItemsRequestType.send(:include, SortOrder)
