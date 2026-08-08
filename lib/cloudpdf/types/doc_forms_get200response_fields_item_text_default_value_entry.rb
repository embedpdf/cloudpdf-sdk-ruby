# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocFormsGet200ResponseFieldsItemTextDefaultValueEntry < Internal::Types::Model
      extend Cloudpdf::Internal::Types::Union

      discriminant :kind

      member -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemTextDefaultValueEntryNone }, key: "NONE"

      member -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemTextDefaultValueEntryScalar }, key: "SCALAR"

      member -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemTextDefaultValueEntryArray }, key: "ARRAY"

      member -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemTextDefaultValueEntryUnsupported }, key: "UNSUPPORTED"
    end
  end
end
