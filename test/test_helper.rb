$:.unshift File.dirname(__FILE__)
$:.unshift File.join(File.dirname(__FILE__), "..", "lib")

require 'test/unit'
require 'ebay_shopping'
require 'shoulda'

class Test::Unit::TestCase #:nodoc:
  FIXTURES_DIR = File.dirname(__FILE__) + '/fixtures' unless defined?(FIXTURES_DIR)
end
