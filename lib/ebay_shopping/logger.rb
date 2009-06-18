module EbayShopping
  module Logger
    def logger
      out = STDOUT
      if defined?(RAILS_ROOT)
        out = "#{RAILS_ROOT}/log/ebay_shopping.log"
      end
      @log = ::Logger.new(out)
    end
  end
end
