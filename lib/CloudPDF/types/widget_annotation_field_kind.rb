# frozen_string_literal: true

module CloudPDF
  module Types
    module WidgetAnnotationFieldKind
      extend CloudPDF::Internal::Types::Enum

      TEXT = "text"
      CHECKBOX = "checkbox"
      RADIO = "radio"
      COMBOBOX = "combobox"
      LISTBOX = "listbox"
      PUSHBUTTON = "pushbutton"
      SIGNATURE = "signature"
      UNKNOWN = "unknown"
    end
  end
end
