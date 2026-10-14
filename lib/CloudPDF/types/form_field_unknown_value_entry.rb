# frozen_string_literal: true

module CloudPDF
  module Types
    class FormFieldUnknownValueEntry < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::FormFieldUnknownValueEntryNone }, key: "NONE"

      member -> { CloudPDF::Types::FormFieldUnknownValueEntryScalar }, key: "SCALAR"

      member -> { CloudPDF::Types::FormFieldUnknownValueEntryArray }, key: "ARRAY"

      member -> { CloudPDF::Types::FormFieldUnknownValueEntryUnsupported }, key: "UNSUPPORTED"
    end
  end
end
