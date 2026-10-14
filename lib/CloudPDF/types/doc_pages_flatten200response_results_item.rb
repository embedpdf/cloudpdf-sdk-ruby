# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesFlatten200ResponseResultsItem < Internal::Types::Model
      field :page, -> { CloudPDF::Types::PageRef }, optional: false, nullable: false

      field :status, -> { CloudPDF::Types::DocPagesFlatten200ResponseResultsItemStatus }, optional: false, nullable: false
    end
  end
end
