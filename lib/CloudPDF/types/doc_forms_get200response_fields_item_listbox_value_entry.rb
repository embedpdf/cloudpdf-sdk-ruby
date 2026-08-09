# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsGet200ResponseFieldsItemListboxValueEntry < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemListboxValueEntryNone }, key: "NONE"

      member -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemListboxValueEntryScalar }, key: "SCALAR"

      member -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemListboxValueEntryArray }, key: "ARRAY"

      member -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemListboxValueEntryUnsupported }, key: "UNSUPPORTED"
    end
  end
end
