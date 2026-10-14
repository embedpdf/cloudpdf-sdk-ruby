# frozen_string_literal: true

module CloudPDF
  module Types
    class FormFieldListboxDefaultValueEntry < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::FormFieldListboxDefaultValueEntryNone }, key: "NONE"

      member -> { CloudPDF::Types::FormFieldListboxDefaultValueEntryScalar }, key: "SCALAR"

      member -> { CloudPDF::Types::FormFieldListboxDefaultValueEntryArray }, key: "ARRAY"

      member -> { CloudPDF::Types::FormFieldListboxDefaultValueEntryUnsupported }, key: "UNSUPPORTED"
    end
  end
end
