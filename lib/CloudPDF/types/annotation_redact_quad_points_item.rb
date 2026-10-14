# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationRedactQuadPointsItem < Internal::Types::Model
      field :upper_left, -> { CloudPDF::Types::AnnotationRedactQuadPointsItemUpperLeft }, optional: false, nullable: false, api_name: "upperLeft"

      field :upper_right, -> { CloudPDF::Types::AnnotationRedactQuadPointsItemUpperRight }, optional: false, nullable: false, api_name: "upperRight"

      field :lower_left, -> { CloudPDF::Types::AnnotationRedactQuadPointsItemLowerLeft }, optional: false, nullable: false, api_name: "lowerLeft"

      field :lower_right, -> { CloudPDF::Types::AnnotationRedactQuadPointsItemLowerRight }, optional: false, nullable: false, api_name: "lowerRight"
    end
  end
end
