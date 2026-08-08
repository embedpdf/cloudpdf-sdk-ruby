# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocFormsGet200ResponseFieldsItemListboxActions < Internal::Types::Model
      field :keystroke, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemListboxActionsKeystroke }, optional: true, nullable: false

      field :format, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemListboxActionsFormat }, optional: true, nullable: false

      field :validate, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemListboxActionsValidate }, optional: true, nullable: false

      field :calculate, -> { Cloudpdf::Types::DocFormsGet200ResponseFieldsItemListboxActionsCalculate }, optional: true, nullable: false
    end
  end
end
