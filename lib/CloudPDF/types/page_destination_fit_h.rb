# frozen_string_literal: true

module CloudPDF
  module Types
    class PageDestinationFitH < Internal::Types::Model
      field :page, -> { CloudPDF::Types::PageRef }, optional: false, nullable: false

      field :y, -> { Integer }, optional: true, nullable: false
    end
  end
end
