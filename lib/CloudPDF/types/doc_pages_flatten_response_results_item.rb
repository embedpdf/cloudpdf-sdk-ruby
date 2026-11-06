# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesFlattenResponseResultsItem < Internal::Types::Model
      field :page, -> { CloudPDF::Types::PageRef }, optional: false, nullable: false

      field :status, -> { CloudPDF::Types::DocPagesFlattenResponseResultsItemStatus }, optional: false, nullable: false
    end
  end
end
