# frozen_string_literal: true

module CloudPDF
  module Types
    module DocFormsSetValue400Response
      # DocFormsSetValue400Response is an alias for EngineErrorPayload

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
