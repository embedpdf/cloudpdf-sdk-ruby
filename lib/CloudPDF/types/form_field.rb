# frozen_string_literal: true

module CloudPDF
  module Types
    # A form field, by its `family`. A newer server can add families: read one your client doesn't know as `unknown`,
    # keeping the fields every field has, with `rawValue` an empty string when the body has none.
    class FormField < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::FormFieldText }, key: "TEXT"

      member -> { CloudPDF::Types::FormFieldCheckbox }, key: "CHECKBOX"

      member -> { CloudPDF::Types::FormFieldRadio }, key: "RADIO"

      member -> { CloudPDF::Types::FormFieldCombobox }, key: "COMBOBOX"

      member -> { CloudPDF::Types::FormFieldListbox }, key: "LISTBOX"

      member -> { CloudPDF::Types::FormFieldPushbutton }, key: "PUSHBUTTON"

      member -> { CloudPDF::Types::FormFieldSignature }, key: "SIGNATURE"

      member -> { CloudPDF::Types::FormFieldUnknown }, key: "UNKNOWN"
    end
  end
end
