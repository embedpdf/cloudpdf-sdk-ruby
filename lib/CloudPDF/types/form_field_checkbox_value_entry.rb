# frozen_string_literal: true

module CloudPDF
  module Types
    class FormFieldCheckboxValueEntry < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::FormFieldCheckboxValueEntryNone }, key: "NONE"

      member -> { CloudPDF::Types::FormFieldCheckboxValueEntryScalar }, key: "SCALAR"

      member -> { CloudPDF::Types::FormFieldCheckboxValueEntryArray }, key: "ARRAY"

      member -> { CloudPDF::Types::FormFieldCheckboxValueEntryUnsupported }, key: "UNSUPPORTED"
    end
  end
end
