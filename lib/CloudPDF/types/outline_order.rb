# frozen_string_literal: true

module CloudPDF
  module Types
    class OutlineOrder < Internal::Types::Model
      field :parent, -> { CloudPDF::Types::OutlineItemRef }, optional: false, nullable: true

      field :children, -> { Internal::Types::Array[CloudPDF::Types::OutlineItemRef] }, optional: false, nullable: false
    end
  end
end
