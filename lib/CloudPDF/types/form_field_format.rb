# frozen_string_literal: true

module CloudPDF
  module Types
    # The shape a text field's or a dropdown's value has, by its `kind`: a date or a time with the pattern it is shown
    # in, or `other` for a format script the engine does not recognise. A newer server can add kinds: read one your
    # client doesn't know as `other`.
    class FormFieldFormat < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::FormFieldFormatDate }, key: "DATE"

      member -> { CloudPDF::Types::FormFieldFormatTime }, key: "TIME"

      member -> { CloudPDF::Types::FormFieldFormatOther }, key: "OTHER"
    end
  end
end
