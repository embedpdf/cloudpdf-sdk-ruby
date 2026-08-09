# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsGet200ResponseFieldsItemSignatureActions < Internal::Types::Model
      field :keystroke, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemSignatureActionsKeystroke }, optional: true, nullable: false

      field :format, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemSignatureActionsFormat }, optional: true, nullable: false

      field :validate, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemSignatureActionsValidate }, optional: true, nullable: false

      field :calculate, -> { CloudPDF::Types::DocFormsGet200ResponseFieldsItemSignatureActionsCalculate }, optional: true, nullable: false
    end
  end
end
