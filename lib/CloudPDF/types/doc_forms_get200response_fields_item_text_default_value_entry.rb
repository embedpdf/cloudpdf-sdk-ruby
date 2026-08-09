# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsGet200ResponseFieldsItemTextDefaultValueEntry < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemTextDefaultValueEntryNone }, key: "NONE"

      member -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemTextDefaultValueEntryScalar }, key: "SCALAR"

      member -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemTextDefaultValueEntryArray }, key: "ARRAY"

      member -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemTextDefaultValueEntryUnsupported }, key: "UNSUPPORTED"
    end
  end
end
