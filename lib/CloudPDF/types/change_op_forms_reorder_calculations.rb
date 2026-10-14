# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeOpFormsReorderCalculations < Internal::Types::Model
      field :fields, -> { Internal::Types::Array[CloudPDF::Types::FormFieldRef] }, optional: false, nullable: false

      field :position, -> { CloudPDF::Types::FieldPosition }, optional: false, nullable: false
    end
  end
end
