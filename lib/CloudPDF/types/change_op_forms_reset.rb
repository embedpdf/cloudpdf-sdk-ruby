# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeOpFormsReset < Internal::Types::Model
      field :fields, -> { Internal::Types::Array[CloudPDF::Types::FormFieldRef] }, optional: true, nullable: false
    end
  end
end
