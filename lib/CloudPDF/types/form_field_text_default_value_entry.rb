# frozen_string_literal: true

module CloudPDF
  module Types
    class FormFieldTextDefaultValueEntry < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::FormFieldTextDefaultValueEntryNone }, key: "NONE"

      member -> { CloudPDF::Types::FormFieldTextDefaultValueEntryScalar }, key: "SCALAR"

      member -> { CloudPDF::Types::FormFieldTextDefaultValueEntryArray }, key: "ARRAY"

      member -> { CloudPDF::Types::FormFieldTextDefaultValueEntryUnsupported }, key: "UNSUPPORTED"
    end
  end
end
