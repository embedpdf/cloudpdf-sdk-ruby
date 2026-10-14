# frozen_string_literal: true

module CloudPDF
  module Types
    class FormFieldValue < Internal::Types::Model
      field :value, -> { String }, optional: true, nullable: false

      field :checked, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :selected_values, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "selectedValues"
    end
  end
end
