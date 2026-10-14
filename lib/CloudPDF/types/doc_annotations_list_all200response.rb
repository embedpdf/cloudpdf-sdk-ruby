# frozen_string_literal: true

module CloudPDF
  module Types
    module DocAnnotationsListAll200Response
      # DocAnnotationsListAll200Response is an alias for AnnotationList

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
