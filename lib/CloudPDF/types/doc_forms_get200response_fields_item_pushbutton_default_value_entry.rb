# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsGet200ResponseFieldsItemPushbuttonDefaultValueEntry < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemPushbuttonDefaultValueEntryNone }, key: "NONE"

      member -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemPushbuttonDefaultValueEntryScalar }, key: "SCALAR"

      member -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemPushbuttonDefaultValueEntryArray }, key: "ARRAY"

      member -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemPushbuttonDefaultValueEntryUnsupported }, key: "UNSUPPORTED"
    end
  end
end
