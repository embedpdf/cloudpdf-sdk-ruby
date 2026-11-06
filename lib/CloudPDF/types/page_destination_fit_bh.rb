# frozen_string_literal: true

module CloudPDF
  module Types
    class PageDestinationFitBh < Internal::Types::Model
      field :page, -> { CloudPDF::Types::PageRef }, optional: false, nullable: false

      field :y, -> { Integer }, optional: false, nullable: true
    end
  end
end
