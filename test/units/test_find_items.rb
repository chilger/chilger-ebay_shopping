require "test_helper"

class TestFindItems < Test::Unit::TestCase

  CONFIG_VALID = FIXTURES_DIR + '/config_valid.yml'

  context "A FindItems request" do

    setup do
        @session = EbayShopping::Session.new( CONFIG_VALID, true)
    end

    teardown do 
        @session = nil
    end

    should "work by keyword" do
      assert @session.find_items_by_keyword('Test Item')
    end

    should "work by seller ID" do
      assert @session.find_items_by_seller('A Seller ID')
    end

    should "accept a valid SortOrder" do
      assert @session.find_items_by_keyword('Test Item',
              {:SortOrder => SortOrderCodeType::Ascending})
    end

    should "accept a valid ItemSort" do
      assert @session.find_items_by_keyword('Test Item',
              {:ItemSort => SimpleItemSortCodeType::BestMatch})
    end

    should "raise exception for an invalid SortOrder" do
      assert_raises ArgumentError do
        @session.find_items_by_keyword('Test Item',{:SortOrder => 'foo'})
      end
    end

    should "raise exception for an invalid ItemSort" do
      assert_raises ArgumentError do
        @session.find_items_by_keyword('Test Item',{:ItemSort => 'foo'})
      end
    end

  end
end
