# frozen_string_literal: true

module CloudPDF
  module Types
    class FormFieldComboboxDefaultValueEntry < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::FormFieldComboboxDefaultValueEntryNone }, key: "NONE"

      member -> { CloudPDF::Types::FormFieldComboboxDefaultValueEntryScalar }, key: "SCALAR"

      member -> { CloudPDF::Types::FormFieldComboboxDefaultValueEntryArray }, key: "ARRAY"

      member -> { CloudPDF::Types::FormFieldComboboxDefaultValueEntryUnsupported }, key: "UNSUPPORTED"
    end
  end
end
