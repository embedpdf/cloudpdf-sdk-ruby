# frozen_string_literal: true

module CloudPDF
  module Types
    class FormFieldCheckboxDefaultValueEntry < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::FormFieldCheckboxDefaultValueEntryNone }, key: "NONE"

      member -> { CloudPDF::Types::FormFieldCheckboxDefaultValueEntryScalar }, key: "SCALAR"

      member -> { CloudPDF::Types::FormFieldCheckboxDefaultValueEntryArray }, key: "ARRAY"

      member -> { CloudPDF::Types::FormFieldCheckboxDefaultValueEntryUnsupported }, key: "UNSUPPORTED"
    end
  end
end
