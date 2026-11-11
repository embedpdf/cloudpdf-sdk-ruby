# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemFormsCopy < Internal::Types::Model
      field :fields, -> { Internal::Types::Array[CloudPDF::Types::FormField] }, optional: false, nullable: false

      field :widgets, -> { Internal::Types::Array[CloudPDF::Types::WidgetAnnotation] }, optional: false, nullable: false

      field :ref_map, -> { Internal::Types::Array[CloudPDF::Types::ChangeItemFormsCopyRefMapItem] }, optional: false, nullable: false, api_name: "refMap"

      field :dropped, -> { Internal::Types::Array[CloudPDF::Types::ChangeItemFormsCopyDroppedItem] }, optional: false, nullable: false

      field :calculation_order, -> { Internal::Types::Array[CloudPDF::Types::FormFieldRef] }, optional: true, nullable: false, api_name: "calculationOrder"

      field :meta, -> { CloudPDF::Types::FormMutationMeta }, optional: false, nullable: false
    end
  end
end
