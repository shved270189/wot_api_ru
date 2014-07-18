require 'rails/generators'

module WotApiRu
  # @author Ivan Bondarenko
  # Rails generator for generate initializer wot_api_ru file
  class InstallGenerator < Rails::Generators::Base
    include Rails::Generators::ResourceHelpers
    desc 'Generate initialize file of wot_api_ru'

    # Generator name
    # @return [String] generator name
    def name
      'wot_api_ru'
    end

    source_root File.expand_path('../templates', __FILE__)

    # Create initialize wot_api_ru file
    # @note This method create config/initializers/wot_api_ru.rb in rails application
    def copy_initializer_file
      copy_file 'wot_api_ru.rb', 'config/initializers/wot_api_ru.rb'
    end
  end
end