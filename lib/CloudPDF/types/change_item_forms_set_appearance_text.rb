# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemFormsSetAppearanceText < Internal::Types::Model
      field :field, -> { CloudPDF::Types::FormField }, optional: false, nullable: false

      field :widgets, -> { Internal::Types::Array[CloudPDF::Types::WidgetAnnotation] }, optional: false, nullable: false

      field :calculation_order, -> { Internal::Types::Array[CloudPDF::Types::FormFieldRef] }, optional: true, nullable: false, api_name: "calculationOrder"

      field :meta, -> { CloudPDF::Types::FormMutationMeta }, optional: false, nullable: false
    end
  end
end
