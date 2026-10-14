# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsFlatten200ResponseResultsItem < Internal::Types::Model
      field :ref, -> { CloudPDF::Types::AnnotationRef }, optional: false, nullable: false

      field :status, -> { CloudPDF::Types::DocAnnotationsFlatten200ResponseResultsItemStatus }, optional: false, nullable: false
    end
  end
end
