# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocFormsGet200ResponseFieldsItemRadioDefaultValueEntry < Internal::Types::Model
      extend Cloudpdf::Internal::Types::Union

      discriminant :kind

      member -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemRadioDefaultValueEntryNone }, key: "NONE"

      member -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemRadioDefaultValueEntryScalar }, key: "SCALAR"

      member -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemRadioDefaultValueEntryArray }, key: "ARRAY"

      member -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemRadioDefaultValueEntryUnsupported }, key: "UNSUPPORTED"
    end
  end
end
