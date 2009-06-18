#!/usr/bin/env ruby

$:.unshift File.dirname(__FILE__)
$:.unshift File.join(File.dirname(__FILE__), "..", "lib")

require 'ebay_shopping'

session = EbayShopping::Session.new('config.yml',false)
resp = session.find_products_by_isbn('9780618687251',{:IncludeSelector => 'Items,Details', :MaxEntries => 50})

puts resp

