# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemSquigglyQuadPointsItem < Internal::Types::Model
      field :p1, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemSquigglyQuadPointsItemP1 }, optional: false, nullable: false

      field :p2, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemSquigglyQuadPointsItemP2 }, optional: false, nullable: false

      field :p3, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemSquigglyQuadPointsItemP3 }, optional: false, nullable: false

      field :p4, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemSquigglyQuadPointsItemP4 }, optional: false, nullable: false
    end
  end
end
