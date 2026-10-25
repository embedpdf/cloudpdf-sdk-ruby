# frozen_string_literal: true

module CloudPDF
  module Types
    class OutlinePositionAfter < Internal::Types::Model
      field :before, -> { CloudPDF::Types::OutlineItemRef }, optional: true, nullable: false

      field :after, -> { CloudPDF::Types::OutlineItemRef }, optional: true, nullable: false
    end
  end
end
