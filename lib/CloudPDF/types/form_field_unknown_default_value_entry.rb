# frozen_string_literal: true

module CloudPDF
  module Types
    class FormFieldUnknownDefaultValueEntry < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::FormFieldUnknownDefaultValueEntryNone }, key: "NONE"

      member -> { CloudPDF::Types::FormFieldUnknownDefaultValueEntryScalar }, key: "SCALAR"

      member -> { CloudPDF::Types::FormFieldUnknownDefaultValueEntryArray }, key: "ARRAY"

      member -> { CloudPDF::Types::FormFieldUnknownDefaultValueEntryUnsupported }, key: "UNSUPPORTED"
    end
  end
end
