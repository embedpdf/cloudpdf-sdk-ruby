# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsGet200ResponseFieldsItemUnknownValueEntry < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemUnknownValueEntryNone }, key: "NONE"

      member -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemUnknownValueEntryScalar }, key: "SCALAR"

      member -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemUnknownValueEntryArray }, key: "ARRAY"

      member -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemUnknownValueEntryUnsupported }, key: "UNSUPPORTED"
    end
  end
end
