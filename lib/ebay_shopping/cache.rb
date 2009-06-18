require 'digest/sha1'
require 'rexml/document'
require 'soap/marshal'

module EbayShopping
  module Cache

    DEFAULT_EXPIRE = 1000 * 60 * 60 * 24

    def cache_exists?(request, expiry = DEFAULT_EXPIRE)
      file = cache_file(request)
      #logger.debug("Checking cache: #{file}")
      File.exists?(file)
    end

    def cache_read(request, expiry = DEFAULT_EXPIRE)
      return nil unless cache_exists?(request,expiry)
      s = File.read(cache_file(request))
      doc = REXML::Document.new(s)
      SOAP::Marshal.unmarshal s, MappingRegistry::LiteralRegistry
    end

    def cache_dir(request)
      dir = create_cache_dir(create_key(request))
    end

    def cache_file(request)
      method_name = request.call_name.gsub(/^\b\w/) {|x| x.downcase }.to_sym
      dir = create_cache_dir(create_key(request))
      "#{cache_dir(request)}_#{method_name}_response.xml"
    end

    def cache_delete(request)
      file = cache_file(request)
      begin
        logger.debug("Deleting cache file #{file}")
        return File.delete(file) 
      rescue => e
        return false
      end
    end

    def create_key(request)
      tmp = request.call_params.merge(
        { :tracking_id => request.tracking_id,
          :tracking_partner_code => request.tracking_partner_code,
          :affiliate_user_id => request.affiliate_user_id,
          :app_id => request.app_id,
          :call_name => request.call_name,
          :call_params => request.call_params,
          :site_id => request.site_id})
      s = ""
      tmp.stringify_keys!
      tmp.keys.sort.each do |key|
        s << "#{key}=#{tmp[key]}"
      end
      
      Digest::SHA1.hexdigest(s)
    end

    def cache_dir_base
      if defined?(@session) && @session.config.cache_dir
        @session.config.cache_dir
      elsif defined?RAILS_ROOT
        "#{RAILS_ROOT}/tmp/cache/ebay_shopping" 
      else
        '/tmp/ebay_shopping'
      end
    end

    def create_cache_dir(key)
      #dir = "#{cache_dir_base}/#{key.scan(/........../).join('/')}/"
      dir = "#{cache_dir_base}/#{key}/"
      #logger.debug("Creating cache dir #{dir}")
      FileUtils.mkdir_p(dir) unless File.exists?(dir)
      dir 
    end
  end
end
