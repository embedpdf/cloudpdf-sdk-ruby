# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsGet200ResponseFieldsItemTextActions < Internal::Types::Model
      field :keystroke, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemTextActionsKeystroke }, optional: true, nullable: false

      field :format, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemTextActionsFormat }, optional: true, nullable: false

      field :validate, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemTextActionsValidate }, optional: true, nullable: false

      field :calculate, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemTextActionsCalculate }, optional: true, nullable: false
    end
  end
end
