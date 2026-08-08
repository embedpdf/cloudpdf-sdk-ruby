# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocFormsGet200ResponseFieldsItemSignatureDefaultValueEntry < Internal::Types::Model
      extend Cloudpdf::Internal::Types::Union

      discriminant :kind

      member -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemSignatureDefaultValueEntryNone }, key: "NONE"

      member -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemSignatureDefaultValueEntryScalar }, key: "SCALAR"

      member -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemSignatureDefaultValueEntryArray }, key: "ARRAY"

      member -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemSignatureDefaultValueEntryUnsupported }, key: "UNSUPPORTED"
    end
  end
end
