require 'wot_api/constants'
require 'wot_api/settings'
require 'rest_client'

module WotApi
  class Client

    def method_missing(meth, *args, &block)
      raise NoMethodError, "undefined method #{meth} for #{self.class.to_s}" if WotApi::Constants::PATH[meth.to_sym].nil?
      options = args[0]
      options[:application_id] ||= WotApi::Settings[:application_id]
      path = WotApi::Constants::HOST + WotApi::Constants::PATH[meth.to_sym]
      invoke(path, options)
    end

    private

    def invoke(path, options)
      response = RestClient.post(path, options)
      JSON.parse response.body
    end
  end
end
