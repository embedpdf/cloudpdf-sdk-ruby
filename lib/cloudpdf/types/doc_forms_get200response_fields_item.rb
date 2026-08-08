# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocFormsGet200ResponseFieldsItem < Internal::Types::Model
      extend Cloudpdf::Internal::Types::Union

      discriminant :family

      member -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemText }, key: "TEXT"

      member -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemCheckbox }, key: "CHECKBOX"

      member -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemRadio }, key: "RADIO"

      member -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemCombobox }, key: "COMBOBOX"

      member -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemListbox }, key: "LISTBOX"

      member -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemPushbutton }, key: "PUSHBUTTON"

      member -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemSignature }, key: "SIGNATURE"

      member -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemUnknown }, key: "UNKNOWN"
    end
  end
end
