# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItemAnnotationsItemSquigglyQuadPointsItem < Internal::Types::Model
      field :p1, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemSquigglyQuadPointsItemP1 }, optional: false, nullable: false

      field :p2, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemSquigglyQuadPointsItemP2 }, optional: false, nullable: false

      field :p3, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemSquigglyQuadPointsItemP3 }, optional: false, nullable: false

      field :p4, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemSquigglyQuadPointsItemP4 }, optional: false, nullable: false
    end
  end
end
