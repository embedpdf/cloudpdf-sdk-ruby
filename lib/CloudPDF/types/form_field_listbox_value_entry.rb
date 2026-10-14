# frozen_string_literal: true

module CloudPDF
  module Types
    class FormFieldListboxValueEntry < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::FormFieldListboxValueEntryNone }, key: "NONE"

      member -> { CloudPDF::Types::FormFieldListboxValueEntryScalar }, key: "SCALAR"

      member -> { CloudPDF::Types::FormFieldListboxValueEntryArray }, key: "ARRAY"

      member -> { CloudPDF::Types::FormFieldListboxValueEntryUnsupported }, key: "UNSUPPORTED"
    end
  end
end
