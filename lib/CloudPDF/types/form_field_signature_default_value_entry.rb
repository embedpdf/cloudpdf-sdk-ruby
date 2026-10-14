# frozen_string_literal: true

module CloudPDF
  module Types
    class FormFieldSignatureDefaultValueEntry < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::FormFieldSignatureDefaultValueEntryNone }, key: "NONE"

      member -> { CloudPDF::Types::FormFieldSignatureDefaultValueEntryScalar }, key: "SCALAR"

      member -> { CloudPDF::Types::FormFieldSignatureDefaultValueEntryArray }, key: "ARRAY"

      member -> { CloudPDF::Types::FormFieldSignatureDefaultValueEntryUnsupported }, key: "UNSUPPORTED"
    end
  end
end
