# frozen_string_literal: true

module CloudPDF
  module Types
    class FormFieldComboboxValueEntry < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::FormFieldComboboxValueEntryNone }, key: "NONE"

      member -> { CloudPDF::Types::FormFieldComboboxValueEntryScalar }, key: "SCALAR"

      member -> { CloudPDF::Types::FormFieldComboboxValueEntryArray }, key: "ARRAY"

      member -> { CloudPDF::Types::FormFieldComboboxValueEntryUnsupported }, key: "UNSUPPORTED"
    end
  end
end
