# frozen_string_literal: true

module CloudPDF
  module Types
    class PdfActionWrite < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :type

      member -> { CloudPDF::Types::PdfActionWriteJavascript }, key: "JAVASCRIPT"

      member -> { CloudPDF::Types::PdfActionWriteGoto }, key: "GOTO"

      member -> { CloudPDF::Types::PdfActionWriteURI }, key: "URI"

      member -> { CloudPDF::Types::PdfActionWriteNamed }, key: "NAMED"

      member -> { CloudPDF::Types::PdfActionWriteHide }, key: "HIDE"

      member -> { CloudPDF::Types::PdfActionWriteResetForm }, key: "RESET_FORM"

      member -> { CloudPDF::Types::PdfActionWriteSubmitForm }, key: "SUBMIT_FORM"
    end
  end
end
