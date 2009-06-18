require File.join(File.dirname(__FILE__), '..',"test_helper")

class TestSession < Test::Unit::TestCase

  CONFIG_VALID  = FIXTURES_DIR + '/config_valid.yml'
  CONFIG_RAILS = FIXTURES_DIR + '/config_rails.yml'

  context 'An eBay shopping session' do
    should 'be created' do
      assert EbayShopping::Session.new( CONFIG_VALID )
    end
  end

  context 'An RAILS eBay shopping session' do
    setup do 
      ENV['RAILS_ENV'] = 'development'
      EbayShopping::Config.const_set('RAILS_ROOT',
                                     File.join(File.dirname(__FILE__),'..','fixtures')) unless EbayShopping::Config.const_defined?('RAILS_ROOT')
    end
    teardown do

      ENV['RAILS_ENV'] = nil 
    end
    should 'be created for RAILS_ROOT' do
      assert EbayShopping::Session.new
    end
  end

end
