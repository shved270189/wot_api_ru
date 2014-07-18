require 'wot_api_ru/constants'
require 'wot_api_ru/settings'
require 'rest_client'

module WotApiRu
  # @author Ivan Bondarenko
  # Class of client for send response to Wargaming.net Public API
  class Client
    # This method dynamic call Wargaming.net Public API methods from WotApiRu::PATH values
    # @note If you call method which undefined as key in WotApiRu::PATH then method raise NoMethodError
    def method_missing(meth, *args, &block)
      raise NoMethodError, "undefined method #{meth} for #{self.class.to_s}" if WotApiRu::Constants::PATH[meth.to_sym].nil?
      options = args[0] || {}
      options[:application_id] ||= WotApiRu::Settings[:application_id]
      path = WotApiRu::Constants::HOST + WotApiRu::Constants::PATH[meth.to_sym]
      invoke(path, options)
    end

    private

    def invoke(path, options)
      response = RestClient.post(path, options)
      JSON.parse response.body
    end
  end
end
