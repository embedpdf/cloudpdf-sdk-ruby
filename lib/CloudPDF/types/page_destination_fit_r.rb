# frozen_string_literal: true

module CloudPDF
  module Types
    class PageDestinationFitR < Internal::Types::Model
      field :page, -> { CloudPDF::Types::PageRef }, optional: false, nullable: false

      field :x, -> { Integer }, optional: false, nullable: false

      field :y, -> { Integer }, optional: false, nullable: false

      field :width, -> { Integer }, optional: false, nullable: false

      field :height, -> { Integer }, optional: false, nullable: false
    end
  end
end
