# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItemAnnotationsItemHighlightQuadPointsItem < Internal::Types::Model
      field :p1, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemHighlightQuadPointsItemP1 }, optional: false, nullable: false

      field :p2, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemHighlightQuadPointsItemP2 }, optional: false, nullable: false

      field :p3, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemHighlightQuadPointsItemP3 }, optional: false, nullable: false

      field :p4, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemHighlightQuadPointsItemP4 }, optional: false, nullable: false
    end
  end
end
