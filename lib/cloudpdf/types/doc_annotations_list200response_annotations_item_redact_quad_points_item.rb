# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemRedactQuadPointsItem < Internal::Types::Model
      field :p1, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemRedactQuadPointsItemP1 }, optional: false, nullable: false

      field :p2, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemRedactQuadPointsItemP2 }, optional: false, nullable: false

      field :p3, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemRedactQuadPointsItemP3 }, optional: false, nullable: false

      field :p4, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemRedactQuadPointsItemP4 }, optional: false, nullable: false
    end
  end
end
