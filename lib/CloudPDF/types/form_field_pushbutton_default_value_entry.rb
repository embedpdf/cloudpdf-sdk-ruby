# frozen_string_literal: true

module CloudPDF
  module Types
    class FormFieldPushbuttonDefaultValueEntry < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::FormFieldPushbuttonDefaultValueEntryNone }, key: "NONE"

      member -> { CloudPDF::Types::FormFieldPushbuttonDefaultValueEntryScalar }, key: "SCALAR"

      member -> { CloudPDF::Types::FormFieldPushbuttonDefaultValueEntryArray }, key: "ARRAY"

      member -> { CloudPDF::Types::FormFieldPushbuttonDefaultValueEntryUnsupported }, key: "UNSUPPORTED"
    end
  end
end
