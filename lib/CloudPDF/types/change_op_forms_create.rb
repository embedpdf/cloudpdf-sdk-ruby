# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeOpFormsCreate < Internal::Types::Model
      field :draft, -> { CloudPDF::Types::FormFieldDraft }, optional: false, nullable: false

      field :object_number, -> { Integer }, optional: true, nullable: false, api_name: "objectNumber"

      field :widget_object_numbers, -> { Internal::Types::Array[Integer] }, optional: true, nullable: false, api_name: "widgetObjectNumbers"
    end
  end
end
