# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocFormsGet200ResponseFieldsItemRadioActions < Internal::Types::Model
      field :keystroke, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemRadioActionsKeystroke }, optional: true, nullable: false

      field :format, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemRadioActionsFormat }, optional: true, nullable: false

      field :validate, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemRadioActionsValidate }, optional: true, nullable: false

      field :calculate, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemRadioActionsCalculate }, optional: true, nullable: false
    end
  end
end
