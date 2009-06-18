module EbayShopping

  class EbayError < StandardError; end
  class TimeoutError < EbayError; end
  class RequestError < EbayError; end
  class SystemError < EbayError; end

  class Request

    include Cache

    PRODUCTION_HOST = "open.api.ebay.com"
    SANDBOX_HOST    = "open.api.sandbox.ebay.com"
    PATH           = "/shopping"
    API_VERSION    = 605

    attr_reader :tracking_id, 
                :tracking_partner_code, 
                :affiliate_user_id, 
                :app_id, 
                :call_name, 
                :call_params, 
                :site_id 

    def initialize(session, call_name, call_params = {})
      @session = session

      @tracking_id = session.config.tracking_id
      @tracking_partner_code = session.config.tracking_partner_code
      @affiliate_user_id = session.config.affiliate_user_id
      @app_id = session.config.app_id
      logger.debug "Using app_id #{app_id}"
      logger.debug "Using config #{session.config.inspect}"
      logger.debug "Using env #{ENV['RAILS_ENV']}"

      @call_name = call_name.to_s
      @call_params = call_params
      @site_id = call_params.delete(:site_id)||0
    end

    def execute
      url = request_url
      logger.debug("Request URL: #{request_url}")
      api = EbayShoppingAPIInterface.new(url)

      if @session.config.verbose == 'true' 
        api.wiredump_dev=(STDOUT) 
      end

      method_name = call_name.gsub(/^\b\w/) {|x| x.downcase }.to_sym
      request = assign_args(request_obj,call_params)

      if cache_exists?(self) 
        logger.info "CACHE hit: #{call_name} #{url}"
        return cache_read(self)
      else
        return send(api,method_name,request)
      end
    end

    protected 

    def send(api,method_name,request)
      resp = nil
      start = Time.now.to_i
      begin
        api.wiredump_file_base = cache_dir(self)
        logger.info "Writing cache to: #{api.wiredump_file_base}"
        resp = api.send(method_name,request)
      rescue => e 
        # occurs when retries 
        # have been exceeded
        raise TimeoutError, "Request timed out after #{Time.now.to_i - start}ms: #{e} #{e.backtrace.join("\n")}"
      end
      logger.info "*** Request completed in #{(Time.now.to_i - start)}s"
      resp
    end

    def assign_args(obj, args = {})
      args.each do |key, value|
        key = key.to_s.gsub(/^\b\w/) {|x| x.downcase }
        if obj.respond_to? "#{key}="
          obj.send("#{key}=",value)
        else
          raise ArgumentError, "#{obj.class}: unsupported argument '#{key}'"
        end
      end
      obj
    end

    def request_obj
      klass = Object.const_get("#{call_name}RequestType")
      klass.new()
    end

    def api_host
      @session.sandbox? ? SANDBOX_HOST : PRODUCTION_HOST
    end

    # required params
    #  version
    #  appid
    #  callname
    def request_url
      base_url = "http://#{api_host}#{PATH}?"
      base_url << "appid=#{app_id}"
      base_url << "&callname=#{call_name}"
      base_url << "&siteid=#{site_id}"
      base_url << "&version=#{API_VERSION}"
      base_url
    end
    
  end
end
