# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsList200Response < Internal::Types::Model
      field :form_kind, -> { CloudPDF::Types::DocFormsList200ResponseFormKind }, optional: false, nullable: false, api_name: "formKind"

      field :needs_appearances, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "needsAppearances"

      field :fields, -> { Internal::Types::Array[CloudPDF::Types::FormField] }, optional: false, nullable: false

      field :widgets, -> { Internal::Types::Array[CloudPDF::Types::WidgetAnnotation] }, optional: false, nullable: false

      field :calculation_order, -> { Internal::Types::Array[CloudPDF::Types::FormFieldRef] }, optional: false, nullable: false, api_name: "calculationOrder"
    end
  end
end
