$:.unshift(File.dirname(__FILE__) + "/lib")

require 'rubygems'
require 'hoe'
require 'ebay_shopping'

Hoe.spec('chilger-ebay_shopping') do |p|
  p.rubyforge_name  = 'chilger-ebay_shopping' 
  p.summary         = 'A ruby gem for the eBay Shopping API'
  p.author          = 'Curtis Hilger'
  p.email           = 'curtis.hilger@gmail.com'
  p.url             = 'http://just9burritos.com/ebay_shopping'
  p.description     = p.paragraphs_of('README.txt', 2..5).join("\n\n")
  p.changes         = p.paragraphs_of('History.txt', 0..1).join("\n\n")
  p.need_tar        = false

  p.extra_deps << ['soap4r','>=1.5.8']
  p.extra_deps << ['thoughtbot-shoulda','>=2.9.1']
end
