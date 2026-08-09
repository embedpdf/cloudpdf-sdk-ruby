# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsGet200ResponseFieldsItemRadioDefaultValueEntry < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemRadioDefaultValueEntryNone }, key: "NONE"

      member -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemRadioDefaultValueEntryScalar }, key: "SCALAR"

      member -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemRadioDefaultValueEntryArray }, key: "ARRAY"

      member -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemRadioDefaultValueEntryUnsupported }, key: "UNSUPPORTED"
    end
  end
end
