module EbayShopping
  
  require 'yaml'

  class ConfigError < StandardError; end

  class Config

    attr_reader :env
    attr_reader :file

    PRIVATE = "#{ENV['HOME']}/.ebayshoppingrc"
    PUBLIC  = '/etc/ebayshoppingrc'
    RAILS   = Proc.new {"#{RAILS_ROOT}/config/ebay_shopping.yml"}

    SANDBOX    = :sandbox
    PRODUCTION = :production

    KEYS = [:app_id]

    def initialize(env=SANDBOX, file=nil)

      @config = nil
      @env    = env.to_s
      @file   = file 

      if @file
        validate_config(@file) 
      else
        find_default_configs([RAILS,PRIVATE,PUBLIC]) 
      end

    end

    def app_id
      config_value('app_id')
    end

    def tracking_id
      config_value('tracking_id')
    end

    def tracking_partner_code
      config_value('tracking_partner_code')
    end

    def affiliate_user_id
      config_value('affiliate_user_id')
    end

    def verbose
      config_value('verbose')
    end

    def cache_dir 
      config_value('cache_dir')
    end

    protected

    def config_value(key)
      if ENV['RAILS_ENV']
        return @config[ENV['RAILS_ENV']][@env][key]
      else
        return @config[@env][key]
      end
    end

    def validate_config(c)
      begin
        @config = YAML.load(File.open(c,'r'))
        validate_keys
      rescue => e
        raise ConfigError, "ERROR: invalid configuration: #{@file}"
      end
    end

    def validate_keys
      KEYS.each do |k|
        unless config_value(k.to_s)
          raise ConfigError, ("#{@config} Missing key: #{k} for ebay #{@env} environment: #{@file}") 
        end
      end
    end

    def find_default_configs(files)

      files.each do |f|
        begin
          @file = f.call rescue nil
          @file ||= f 
          @config = YAML.load(File.open(@file)) if File.exists?(@file)
          validate_keys && break
        rescue ConfigError => ce
          logger.warn ce
        rescue => e
          logger.warn e
        end

        break if @config
      end

      raise ConfigError.new(help) unless @config
    end

    def help 
      str = <<-OUT

         Unable to locate a valid configuration file.

         Supported locations include:

           ./ebayshoppingrc
           /etc/ebayshoppingrc
          RAILS_ROOT/config/ebayshopping.yml 

      OUT
    end

  end

end
