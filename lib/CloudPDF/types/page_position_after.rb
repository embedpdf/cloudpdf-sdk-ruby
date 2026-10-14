# frozen_string_literal: true

module CloudPDF
  module Types
    class PagePositionAfter < Internal::Types::Model
      field :before, -> { CloudPDF::Types::PageRef }, optional: true, nullable: false

      field :after, -> { CloudPDF::Types::PageRef }, optional: true, nullable: false
    end
  end
end
