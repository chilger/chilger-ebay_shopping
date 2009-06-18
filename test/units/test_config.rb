require File.join(File.dirname(__FILE__), '..',"test_helper")

class TestEbayshoppingConfig < Test::Unit::TestCase

  CONFIG_MIA      = FIXTURES_DIR + '/missing_config.yml'
  CONFIG_VALID    = FIXTURES_DIR + '/config_valid.yml'
  CONFIG_INVALID  = FIXTURES_DIR + '/config_invalid.yml'
  CONFIG_RAILS    = FIXTURES_DIR + '/config_rails.yml'

  context 'A ROR ebayshopping configuration' do

    setup do
      ENV['RAILS_ENV'] = 'test'
    end

    teardown do 
      ENV['RAILS_ENV'] = nil
    end

    should 'load a well formatted configuration file' do

      assert_nothing_raised do
        @config = EbayShopping::Config.new( EbayShopping::Config::SANDBOX, CONFIG_RAILS)
        assert @config.app_id
      end
    end

  end

  context 'An ebayshopping configuration' do

    should 'raise an error for a missing configuration file' do
      assert_raises EbayShopping::ConfigError do
        EbayShopping::Config.new( EbayShopping::Config::SANDBOX, CONFIG_MIA )
      end
    end

    should 'load a well formatted configuration file' do
      assert_nothing_raised do
        EbayShopping::Config.new( EbayShopping::Config::SANDBOX, CONFIG_VALID )
      end
    end

    should 'raise an error for a bad configuration file' do
      assert_raises EbayShopping::ConfigError do
        EbayShopping::Config.new( EbayShopping::Config::SANDBOX, CONFIG_INVALID )
      end
    end

    should 'support custom cache directories' do

      config = EbayShopping::Config.new( EbayShopping::Config::SANDBOX, CONFIG_VALID )
      assert config.cache_dir
    end
  end

end
