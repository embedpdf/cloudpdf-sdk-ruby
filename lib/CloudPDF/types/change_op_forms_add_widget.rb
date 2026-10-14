# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeOpFormsAddWidget < Internal::Types::Model
      field :field, -> { CloudPDF::Types::FormFieldRef }, optional: false, nullable: false

      field :placement, -> { CloudPDF::Types::WidgetPlacement }, optional: false, nullable: false

      field :object_number, -> { Integer }, optional: true, nullable: false, api_name: "objectNumber"

      field :split_object_number, -> { Integer }, optional: true, nullable: false, api_name: "splitObjectNumber"
    end
  end
end
