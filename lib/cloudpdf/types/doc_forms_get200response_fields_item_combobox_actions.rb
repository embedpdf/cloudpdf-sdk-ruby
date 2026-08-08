# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocFormsGet200ResponseFieldsItemComboboxActions < Internal::Types::Model
      field :keystroke, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemComboboxActionsKeystroke }, optional: true, nullable: false

      field :format, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemComboboxActionsFormat }, optional: true, nullable: false

      field :validate, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemComboboxActionsValidate }, optional: true, nullable: false

      field :calculate, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemComboboxActionsCalculate }, optional: true, nullable: false
    end
  end
end
