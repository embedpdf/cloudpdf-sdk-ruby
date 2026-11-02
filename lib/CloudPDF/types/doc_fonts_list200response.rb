# frozen_string_literal: true

module CloudPDF
  module Types
    module DocFontsList200Response
      # DocFontsList200Response is an alias for FontList

      # @option str [String]
      #
      # @return [untyped]
      def self.load(str)
        ::JSON.parse(str)
      end

      # @option value [untyped]
      #
      # @return [String]
      def self.dump(value)
        ::JSON.generate(value)
      end
    end
  end
end
