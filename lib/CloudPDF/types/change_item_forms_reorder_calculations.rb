# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemFormsReorderCalculations < Internal::Types::Model
      field :calculation_order, -> { Internal::Types::Array[CloudPDF::Types::FormFieldRef] }, optional: false, nullable: false, api_name: "calculationOrder"

      field :meta, -> { CloudPDF::Types::FormMutationMeta }, optional: false, nullable: false
    end
  end
end
