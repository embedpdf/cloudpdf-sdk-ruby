# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocFormsGet200ResponseFieldsItemUnknownValueEntry < Internal::Types::Model
      extend Cloudpdf::Internal::Types::Union

      discriminant :kind

      member -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemUnknownValueEntryNone }, key: "NONE"

      member -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemUnknownValueEntryScalar }, key: "SCALAR"

      member -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemUnknownValueEntryArray }, key: "ARRAY"

      member -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemUnknownValueEntryUnsupported }, key: "UNSUPPORTED"
    end
  end
end
