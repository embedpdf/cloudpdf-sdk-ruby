# frozen_string_literal: true

module CloudPDF
  module Types
    class PdfLinkTargetWritable < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::PdfLinkTargetWritableGoto }, key: "GOTO"

      member -> { CloudPDF::Types::PdfLinkTargetWritableURI }, key: "URI"

      member -> { CloudPDF::Types::PdfLinkTargetWritableNamed }, key: "NAMED"
    end
  end
end
