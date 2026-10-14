# frozen_string_literal: true

module CloudPDF
  module Types
    class FormFieldDraft < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :family

      member -> { CloudPDF::Types::FormFieldDraftText }, key: "TEXT"

      member -> { CloudPDF::Types::FormFieldDraftCheckbox }, key: "CHECKBOX"

      member -> { CloudPDF::Types::FormFieldDraftRadio }, key: "RADIO"

      member -> { CloudPDF::Types::FormFieldDraftCombobox }, key: "COMBOBOX"

      member -> { CloudPDF::Types::FormFieldDraftListbox }, key: "LISTBOX"

      member -> { CloudPDF::Types::FormFieldDraftPushbutton }, key: "PUSHBUTTON"

      member -> { CloudPDF::Types::FormFieldDraftSignature }, key: "SIGNATURE"
    end
  end
end
