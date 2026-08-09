# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemHighlightQuadPointsItem < Internal::Types::Model
      field :p1, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemHighlightQuadPointsItemP1 }, optional: false, nullable: false

      field :p2, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemHighlightQuadPointsItemP2 }, optional: false, nullable: false

      field :p3, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemHighlightQuadPointsItemP3 }, optional: false, nullable: false

      field :p4, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemHighlightQuadPointsItemP4 }, optional: false, nullable: false
    end
  end
end
