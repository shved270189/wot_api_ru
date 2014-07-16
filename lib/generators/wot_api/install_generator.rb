require 'rails/generators'

module WotApi
  class InstallGenerator < Rails::Generators::Base
    include Rails::Generators::ResourceHelpers
    desc "Some description of my generator here"

    def name
      "wot_api"
    end

    source_root File.expand_path("../templates", __FILE__)

    def copy_initializer_file
      copy_file "wot_api.rb", "config/initializers/wot_api.rb"
    end
  end
end