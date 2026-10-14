# frozen_string_literal: true

module CloudPDF
  module Types
    class FormFieldRadioValueEntry < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::FormFieldRadioValueEntryNone }, key: "NONE"

      member -> { CloudPDF::Types::FormFieldRadioValueEntryScalar }, key: "SCALAR"

      member -> { CloudPDF::Types::FormFieldRadioValueEntryArray }, key: "ARRAY"

      member -> { CloudPDF::Types::FormFieldRadioValueEntryUnsupported }, key: "UNSUPPORTED"
    end
  end
end
