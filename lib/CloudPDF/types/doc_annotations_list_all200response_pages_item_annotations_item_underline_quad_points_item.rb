# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItemAnnotationsItemUnderlineQuadPointsItem < Internal::Types::Model
      field :p1, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemUnderlineQuadPointsItemP1 }, optional: false, nullable: false

      field :p2, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemUnderlineQuadPointsItemP2 }, optional: false, nullable: false

      field :p3, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemUnderlineQuadPointsItemP3 }, optional: false, nullable: false

      field :p4, -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemUnderlineQuadPointsItemP4 }, optional: false, nullable: false
    end
  end
end
