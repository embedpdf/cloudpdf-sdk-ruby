# frozen_string_literal: true

module CloudPDF
  module Types
    class PageDestinationFitBv < Internal::Types::Model
      field :page, -> { CloudPDF::Types::PageRef }, optional: false, nullable: false

      field :x, -> { Integer }, optional: true, nullable: false
    end
  end
end
