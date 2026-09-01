# frozen_string_literal: true

module CloudPDF
  module Types
    class PdfActionTargetRef < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::PdfActionTargetRefName }, key: "NAME"

      member -> { CloudPDF::Types::PdfActionTargetRefObjectNumber }, key: "OBJECT_NUMBER"
    end
  end
end
