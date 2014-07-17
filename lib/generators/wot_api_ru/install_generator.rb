require 'rails/generators'

module WotApiRu
  class InstallGenerator < Rails::Generators::Base
    include Rails::Generators::ResourceHelpers
    desc 'Generate initialize file of wot_api_ru'

    def name
      'wot_api_ru'
    end

    source_root File.expand_path('../templates', __FILE__)

    def copy_initializer_file
      copy_file 'wot_api_ru.rb', 'config/initializers/wot_api_ru.rb'
    end
  end
end