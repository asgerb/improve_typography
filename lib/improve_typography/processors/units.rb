module ImproveTypography
  module Processors
    class Units < Processor
      REGEXP = /(\d\s*)(m|mm|cm|km)(2|3)/

      def call
        str.gsub(REGEXP, '\1\2<sup>\3</sup>')
      end
    end
  end
end
