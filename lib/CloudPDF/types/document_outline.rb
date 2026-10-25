# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentOutline < Internal::Types::Model
      field :items, -> { Internal::Types::Array[CloudPDF::Types::OutlineItem] }, optional: false, nullable: false

      field :incomplete, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
