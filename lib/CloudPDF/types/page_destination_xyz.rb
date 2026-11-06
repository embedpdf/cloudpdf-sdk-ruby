# frozen_string_literal: true

module CloudPDF
  module Types
    class PageDestinationXyz < Internal::Types::Model
      field :page, -> { CloudPDF::Types::PageRef }, optional: false, nullable: false

      field :x, -> { Integer }, optional: false, nullable: true

      field :y, -> { Integer }, optional: false, nullable: true

      field :zoom, -> { Integer }, optional: false, nullable: true
    end
  end
end
