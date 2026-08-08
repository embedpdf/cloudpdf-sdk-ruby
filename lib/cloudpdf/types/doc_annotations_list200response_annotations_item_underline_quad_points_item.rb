# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemUnderlineQuadPointsItem < Internal::Types::Model
      field :p1, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemUnderlineQuadPointsItemP1 }, optional: false, nullable: false

      field :p2, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemUnderlineQuadPointsItemP2 }, optional: false, nullable: false

      field :p3, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemUnderlineQuadPointsItemP3 }, optional: false, nullable: false

      field :p4, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemUnderlineQuadPointsItemP4 }, optional: false, nullable: false
    end
  end
end
