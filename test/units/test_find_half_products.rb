require "test_helper"

class TestFindHalfProducts < Test::Unit::TestCase

  CONFIG_VALID  = FIXTURES_DIR + '/config_valid.yml'

  context "A FindHalfProducts request" do

    setup do
        @session = EbayShopping::Session.new( CONFIG_VALID, true)
    end

    teardown do
        @session = nil 
    end

    should "work by keyword" do
      assert @session.find_half_products_by_keyword('Test Item')
    end

    should "work by product ID" do
      assert @session.find_half_products_by_id('A Product ID')
    end

    should "work by ISBN" do
      assert @session.find_half_products_by_isbn('123123123')
    end

    should "accept a valid SortOrder" do
      assert @session.find_half_products_by_keyword('Test Item',
              {:SortOrder => SortOrderCodeType::Ascending})
    end

    should "raise exception for an invalid SortOrder" do
      assert_raises ArgumentError do
        @session.find_half_products_by_keyword('Test Item',{:SortOrder => 'foo'})
      end
    end

  end
end
