module Skeevy
  module Filters
    class ForceUtf8Encoding
      include Skeevy::Filter

      def filter_read(content:)
        if content
          content.force_encoding("utf-8")
        end
      end

      def filter_write(content:)
        content
      end
    end
  end
end