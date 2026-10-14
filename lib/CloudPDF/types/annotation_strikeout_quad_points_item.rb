# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationStrikeoutQuadPointsItem < Internal::Types::Model
      field :upper_left, -> { CloudPDF::Types::AnnotationStrikeoutQuadPointsItemUpperLeft }, optional: false, nullable: false, api_name: "upperLeft"

      field :upper_right, -> { CloudPDF::Types::AnnotationStrikeoutQuadPointsItemUpperRight }, optional: false, nullable: false, api_name: "upperRight"

      field :lower_left, -> { CloudPDF::Types::AnnotationStrikeoutQuadPointsItemLowerLeft }, optional: false, nullable: false, api_name: "lowerLeft"

      field :lower_right, -> { CloudPDF::Types::AnnotationStrikeoutQuadPointsItemLowerRight }, optional: false, nullable: false, api_name: "lowerRight"
    end
  end
end
