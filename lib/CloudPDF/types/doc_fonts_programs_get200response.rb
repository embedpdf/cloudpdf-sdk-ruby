# frozen_string_literal: true

module CloudPDF
  module Types
    module DocFontsProgramsGet200Response
      # DocFontsProgramsGet200Response is an alias for FontProgramInfo

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
