module WotApiRu
  class Settings

    @@options = Hash.new

    class << self
      def [](ind)
        @@options[ind.to_sym]
      end

      def []=(ind, val)
        @@options[ind.to_sym] = val.to_s
      end
    end
  end
end