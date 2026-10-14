# frozen_string_literal: true

module CloudPDF
  module Types
    class FormFieldTextValueEntry < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::FormFieldTextValueEntryNone }, key: "NONE"

      member -> { CloudPDF::Types::FormFieldTextValueEntryScalar }, key: "SCALAR"

      member -> { CloudPDF::Types::FormFieldTextValueEntryArray }, key: "ARRAY"

      member -> { CloudPDF::Types::FormFieldTextValueEntryUnsupported }, key: "UNSUPPORTED"
    end
  end
end
