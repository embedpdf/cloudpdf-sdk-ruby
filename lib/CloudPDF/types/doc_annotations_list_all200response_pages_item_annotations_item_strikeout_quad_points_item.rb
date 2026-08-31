# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItemAnnotationsItemStrikeoutQuadPointsItem < Internal::Types::Model
      field :p1, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemStrikeoutQuadPointsItemP1 }, optional: false, nullable: false

      field :p2, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemStrikeoutQuadPointsItemP2 }, optional: false, nullable: false

      field :p3, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemStrikeoutQuadPointsItemP3 }, optional: false, nullable: false

      field :p4, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemStrikeoutQuadPointsItemP4 }, optional: false, nullable: false
    end
  end
end
