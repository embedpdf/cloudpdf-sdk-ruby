# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsGet200ResponseFieldsItem < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :family

      member -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemText }, key: "TEXT"

      member -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemCheckbox }, key: "CHECKBOX"

      member -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemRadio }, key: "RADIO"

      member -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemCombobox }, key: "COMBOBOX"

      member -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemListbox }, key: "LISTBOX"

      member -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemPushbutton }, key: "PUSHBUTTON"

      member -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemSignature }, key: "SIGNATURE"

      member -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemUnknown }, key: "UNKNOWN"
    end
  end
end
