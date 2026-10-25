# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeOpPagesInsertBlank < Internal::Types::Model
      field :spec, -> { CloudPDF::Types::ChangeOpPagesInsertBlankSpec }, optional: false, nullable: false

      field :position, -> { CloudPDF::Types::PagePosition }, optional: true, nullable: false

      field :object_numbers, -> { Internal::Types::Array[Integer] }, optional: true, nullable: false, api_name: "objectNumbers"
    end
  end
end
