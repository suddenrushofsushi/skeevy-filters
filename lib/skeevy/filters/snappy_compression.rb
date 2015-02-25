module Skeevy
  module Filters
    class SnappyCompression
      include Skeevy::Filter

      def filter_write(content:)
        Snappy.compress(content)
      end

      def filter_read(content:)
        Snappy.uncompress(content)
      end
    end
  end
end