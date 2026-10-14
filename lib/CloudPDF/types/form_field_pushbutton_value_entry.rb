# frozen_string_literal: true

module CloudPDF
  module Types
    class FormFieldPushbuttonValueEntry < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::FormFieldPushbuttonValueEntryNone }, key: "NONE"

      member -> { CloudPDF::Types::FormFieldPushbuttonValueEntryScalar }, key: "SCALAR"

      member -> { CloudPDF::Types::FormFieldPushbuttonValueEntryArray }, key: "ARRAY"

      member -> { CloudPDF::Types::FormFieldPushbuttonValueEntryUnsupported }, key: "UNSUPPORTED"
    end
  end
end
