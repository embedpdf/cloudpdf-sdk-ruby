# frozen_string_literal: true

module CloudPDF
  module Types
    class DocRedactionsApplyResponseResultsItem < Internal::Types::Model
      field :page, -> { CloudPDF::Types::PageRef }, optional: false, nullable: false

      field :status, -> { CloudPDF::Types::DocRedactionsApplyResponseResultsItemStatus }, optional: false, nullable: false

      field :removed_annotation_count, -> { Integer }, optional: false, nullable: false, api_name: "removedAnnotationCount"
    end
  end
end
