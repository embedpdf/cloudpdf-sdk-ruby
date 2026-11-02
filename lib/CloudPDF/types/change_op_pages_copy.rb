# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeOpPagesCopy < Internal::Types::Model
      field :pages, -> { Internal::Types::Array[CloudPDF::Types::PageRef] }, optional: false, nullable: false

      field :position, -> { CloudPDF::Types::PagePosition }, optional: true, nullable: false

      field :object_numbers, -> { Internal::Types::Array[Integer] }, optional: true, nullable: false, api_name: "objectNumbers"
    end
  end
end
