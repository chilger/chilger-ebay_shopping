$:.unshift File.join(File.dirname(__FILE__) + "lib")

begin
require 'rubygems'
gem 'soap4r'
rescue => e
  pp e if $DEBUG
end

require 'soap/mapping'
require 'soap/rpc/driver'

require 'logger'

require 'ebay_shopping/logger'
require 'ebay_shopping/config'
require 'ebay_shopping/session'
require 'ebay_shopping/driver'
require 'ebay_shopping/type_defs'
require 'ebay_shopping/mapping_registry'
require 'ebay_shopping/request/adapters'
require 'ebay_shopping/cache'
require 'ebay_shopping/request'
require 'ebay_shopping/response'

module EbayShopping
  VERSION = '0.0.1'
end

class Hash # :nodoc:
  def stringify_keys!
    keys.each do |key|
      unless key.class.to_s == "String" # weird hack to make the tests run when string_ext_test.rb is also running
        self[key.to_s] = self[key]
        delete(key)
      end
    end
    self
  end
end

EbayShopping::Cache.send(:include,EbayShopping::Logger)
EbayShopping::Config.send(:include,EbayShopping::Logger)
EbayShopping::Session.send(:include,EbayShopping::Logger)
EbayShopping::Request.send(:include,EbayShopping::Logger)
