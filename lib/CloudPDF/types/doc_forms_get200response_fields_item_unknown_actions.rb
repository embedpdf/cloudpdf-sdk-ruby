# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsGet200ResponseFieldsItemUnknownActions < Internal::Types::Model
      field :keystroke, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemUnknownActionsKeystroke }, optional: true, nullable: false

      field :format, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemUnknownActionsFormat }, optional: true, nullable: false

      field :validate, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemUnknownActionsValidate }, optional: true, nullable: false

      field :calculate, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemUnknownActionsCalculate }, optional: true, nullable: false
    end
  end
end
