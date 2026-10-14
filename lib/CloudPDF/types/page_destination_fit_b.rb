# frozen_string_literal: true

module CloudPDF
  module Types
    class PageDestinationFitB < Internal::Types::Model
      field :page, -> { CloudPDF::Types::PageRef }, optional: false, nullable: false
    end
  end
end
