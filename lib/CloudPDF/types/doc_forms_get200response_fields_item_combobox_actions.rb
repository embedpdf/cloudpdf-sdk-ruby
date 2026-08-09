# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsGet200ResponseFieldsItemComboboxActions < Internal::Types::Model
      field :keystroke, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemComboboxActionsKeystroke }, optional: true, nullable: false

      field :format, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemComboboxActionsFormat }, optional: true, nullable: false

      field :validate, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemComboboxActionsValidate }, optional: true, nullable: false

      field :calculate, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemComboboxActionsCalculate }, optional: true, nullable: false
    end
  end
end
