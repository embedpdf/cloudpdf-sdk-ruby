# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsFlattenResponseResultsItem < Internal::Types::Model
      field :ref, -> { CloudPDF::Types::AnnotationRef }, optional: false, nullable: false

      field :status, -> { CloudPDF::Types::DocAnnotationsFlattenResponseResultsItemStatus }, optional: false, nullable: false
    end
  end
end
