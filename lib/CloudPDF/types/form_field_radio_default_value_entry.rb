# frozen_string_literal: true

module CloudPDF
  module Types
    class FormFieldRadioDefaultValueEntry < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::FormFieldRadioDefaultValueEntryNone }, key: "NONE"

      member -> { CloudPDF::Types::FormFieldRadioDefaultValueEntryScalar }, key: "SCALAR"

      member -> { CloudPDF::Types::FormFieldRadioDefaultValueEntryArray }, key: "ARRAY"

      member -> { CloudPDF::Types::FormFieldRadioDefaultValueEntryUnsupported }, key: "UNSUPPORTED"
    end
  end
end
