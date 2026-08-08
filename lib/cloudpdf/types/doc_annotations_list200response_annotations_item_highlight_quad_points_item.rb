# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemHighlightQuadPointsItem < Internal::Types::Model
      field :p1, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemHighlightQuadPointsItemP1 }, optional: false, nullable: false

      field :p2, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemHighlightQuadPointsItemP2 }, optional: false, nullable: false

      field :p3, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemHighlightQuadPointsItemP3 }, optional: false, nullable: false

      field :p4, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemHighlightQuadPointsItemP4 }, optional: false, nullable: false
    end
  end
end
