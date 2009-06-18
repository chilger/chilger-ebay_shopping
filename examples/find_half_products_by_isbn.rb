#!/usr/bin/env ruby

require 'rubygems'
gem 'ebay_shopping'
require 'ebay_shopping'
require 'pp'

session = EbayShopping::Session.new('config.yml',false)
resp = session.find_half_products_by_isbn('9780133647495',{:IncludeSelector => 'Items', :MaxEntries => 20})

puts resp

resp.products.product.each do |p|
  #pp p.domainName
  #pp p.itemCount
  #pp p.title
  #pp p.detailsURL
  p.productID.each do |t|
    pp t
    pp t.xmlattr_type
  end
  p.itemArray.each do |i|
    pp i.halfItemCondition
    pp i.viewItemURLForNaturalSearch.to_s
    pp i.buyItNowAvailable
    pp i.currentPrice.xmlattr_currencyID
    pp i.currentPrice
  end
  #pp p.itemSpecifics
end
