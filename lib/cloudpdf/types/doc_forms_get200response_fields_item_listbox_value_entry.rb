# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocFormsGet200ResponseFieldsItemListboxValueEntry < Internal::Types::Model
      extend Cloudpdf::Internal::Types::Union

      discriminant :kind

      member -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemListboxValueEntryNone }, key: "NONE"

      member -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemListboxValueEntryScalar }, key: "SCALAR"

      member -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemListboxValueEntryArray }, key: "ARRAY"

      member -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemListboxValueEntryUnsupported }, key: "UNSUPPORTED"
    end
  end
end
