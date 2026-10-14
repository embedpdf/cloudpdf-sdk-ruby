# frozen_string_literal: true

module CloudPDF
  module Types
    module FormFieldPatchFamily
      extend CloudPDF::Internal::Types::Enum

      TEXT = "text"
      CHECKBOX = "checkbox"
      RADIO = "radio"
      COMBOBOX = "combobox"
      LISTBOX = "listbox"
      PUSHBUTTON = "pushbutton"
      SIGNATURE = "signature"
    end
  end
end
