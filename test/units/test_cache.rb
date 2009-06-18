require File.join(File.dirname(__FILE__), '..',"test_helper")

class TestEbayShoppingCache < Test::Unit::TestCase
  include EbayShopping::Cache

  attr_reader :config

  def sandbox?
    true
  end

  context 'Ebay Shopping Cache' do

    setup do 
      file = "#{FIXTURES_DIR}/config_valid.yml"
      @session = EbayShopping::Session.new(file,false)
      @options = {:QueryKeywords => "Ruby #{Time.now.to_i}"}
      @request = EbayShopping::Request.new(@session,:FindHalfProducts,@options)
    end

    teardown do 
      cache_delete(@request)
    end

    should "write a cache file for each request" do 

      @request.execute

      assert cache_exists?(@request)
      assert cache_read(@request)
    end

    should "delete a cache file" do
      @request.execute
      assert cache_delete(@request)
    end

    should "return nil for a cache miss" do
      assert_nil cache_read(@request)
    end
    
  end

end
