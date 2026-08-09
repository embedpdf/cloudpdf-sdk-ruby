# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsGet200ResponseFieldsItemPushbuttonActions < Internal::Types::Model
      field :keystroke, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemPushbuttonActionsKeystroke }, optional: true, nullable: false

      field :format, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemPushbuttonActionsFormat }, optional: true, nullable: false

      field :validate, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemPushbuttonActionsValidate }, optional: true, nullable: false

      field :calculate, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemPushbuttonActionsCalculate }, optional: true, nullable: false
    end
  end
end
