#!/usr/bin/env ruby

$:.unshift File.dirname(__FILE__)
$:.unshift File.join(File.dirname(__FILE__), "..", "lib")

require 'ebay_shopping'

session = EbayShopping::Session.new('config.yml',false)
resp = session.find_items_advanced_by_product_id('54340478',{:IncludeSelector => 'ItemSpecifics,Details,SellerInfo', :ItemType => 'AllItemTypes', :MaxEntries => 50})
#resp = session.find_items_advanced_by_isbn('0072310804',{:IncludeSelector => 'ItemSpecifics', :ItemType => 'AllItemTypes', :MaxEntries => 50})
#resp = session.find_items_advanced_by_isbn('0972926445',{:IncludeSelector => 'ItemSpecifics', :ItemType => 'AllItemTypes', :MaxEntries => 50})

resp.searchResult.each do |ia|
 ia.itemArray.each do |item|
   puts item.itemID
   puts item.viewItemURLForNaturalSearch.class
   puts item.listingType
   if item.buyItNowAvailable
     puts 'XXX BUY IT NOW!'
     puts item.buyItNowPrice
     puts item.buyItNowPrice.xmlattr_currencyID
   end
   puts item.itemSpecifics.inspect
   puts item.listingStatus
   puts item.country
   puts item.seller.userID
   puts item.seller.positiveFeedbackPercent
   puts item.currentPrice
   puts item.currentPrice.xmlattr_currencyID
   puts '-'*10
 end
end

puts resp.totalItems
puts resp.totalPages.class
