# frozen_string_literal: true

module CloudPDF
  module Types
    module FontSource
      extend CloudPDF::Internal::Types::Enum

      STANDARD = "standard"
      ENGINE = "engine"
      DOCUMENT = "document"
    end
  end
end
