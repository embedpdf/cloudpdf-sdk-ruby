# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocFormsGet200ResponseFieldsItemTextActions < Internal::Types::Model
      field :keystroke, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemTextActionsKeystroke }, optional: true, nullable: false

      field :format, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemTextActionsFormat }, optional: true, nullable: false

      field :validate, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemTextActionsValidate }, optional: true, nullable: false

      field :calculate, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemTextActionsCalculate }, optional: true, nullable: false
    end
  end
end
