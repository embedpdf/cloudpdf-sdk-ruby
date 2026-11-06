# frozen_string_literal: true

module CloudPDF
  module Types
    module PdfActionNodeSubmitFormPayloadFormat
      extend CloudPDF::Internal::Types::Enum

      FDF = "fdf"
      HTML = "html"
      XFDF = "xfdf"
      PDF = "pdf"
    end
  end
end
