# frozen_string_literal: true

module CloudPDF
  module Types
    # A field's stored value, by its `kind`. A newer server can add kinds: read one your client doesn't know as
    # `unsupported`.
    class FormValueEntry < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::FormValueEntryNone }, key: "NONE"

      member -> { CloudPDF::Types::FormValueEntryScalar }, key: "SCALAR"

      member -> { CloudPDF::Types::FormValueEntryArray }, key: "ARRAY"

      member -> { CloudPDF::Types::FormValueEntryUnsupported }, key: "UNSUPPORTED"
    end
  end
end
