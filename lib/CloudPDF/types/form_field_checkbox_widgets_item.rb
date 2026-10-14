# frozen_string_literal: true

module CloudPDF
  module Types
    class FormFieldCheckboxWidgetsItem < Internal::Types::Model
      field :ref, -> { CloudPDF::Types::AnnotationRef }, optional: false, nullable: true

      field :object_number, -> { Integer }, optional: false, nullable: false, api_name: "objectNumber"

      field :page, -> { CloudPDF::Types::PageRef }, optional: false, nullable: true

      field :on_state, -> { String }, optional: false, nullable: false, api_name: "onState"

      field :export_value, -> { String }, optional: false, nullable: false, api_name: "exportValue"

      field :checked, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
