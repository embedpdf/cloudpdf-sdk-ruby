# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemStrikeoutQuadPointsItem < Internal::Types::Model
      field :p1, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemStrikeoutQuadPointsItemP1 }, optional: false, nullable: false

      field :p2, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemStrikeoutQuadPointsItemP2 }, optional: false, nullable: false

      field :p3, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemStrikeoutQuadPointsItemP3 }, optional: false, nullable: false

      field :p4, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemStrikeoutQuadPointsItemP4 }, optional: false, nullable: false
    end
  end
end
