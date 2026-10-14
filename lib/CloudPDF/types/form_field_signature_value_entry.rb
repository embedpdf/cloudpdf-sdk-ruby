# frozen_string_literal: true

module CloudPDF
  module Types
    class FormFieldSignatureValueEntry < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::FormFieldSignatureValueEntryNone }, key: "NONE"

      member -> { CloudPDF::Types::FormFieldSignatureValueEntryScalar }, key: "SCALAR"

      member -> { CloudPDF::Types::FormFieldSignatureValueEntryArray }, key: "ARRAY"

      member -> { CloudPDF::Types::FormFieldSignatureValueEntryUnsupported }, key: "UNSUPPORTED"
    end
  end
end
