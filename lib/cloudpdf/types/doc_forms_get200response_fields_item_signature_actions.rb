# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocFormsGet200ResponseFieldsItemSignatureActions < Internal::Types::Model
      field :keystroke, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemSignatureActionsKeystroke }, optional: true, nullable: false

      field :format, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemSignatureActionsFormat }, optional: true, nullable: false

      field :validate, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemSignatureActionsValidate }, optional: true, nullable: false

      field :calculate, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemSignatureActionsCalculate }, optional: true, nullable: false
    end
  end
end
