module WotApiRu
  # @author Ivan Bondarenko
  # Storage for application settings
  class Settings
    @options = Hash.new

    class << self
      # Get settings
      # @note This method may get parameter which user set in initializer wot_api_ru
      # @param ind [String, Symbol] the key of setting value
      # @return [String] value settings
      def [](ind)
        @options[ind.to_sym]
      end

      # Set settings
      # @note This method may set or modify application settings
      # @param ind [String, Symbol] the key of setting value
      # @param val [] the value of setting value
      # @return [] val
      def []=(ind, val)
        @options[ind.to_sym] = val.to_s
      end
    end
  end
end