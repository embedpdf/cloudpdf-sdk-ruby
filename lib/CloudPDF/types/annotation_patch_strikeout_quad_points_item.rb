# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPatchStrikeoutQuadPointsItem < Internal::Types::Model
      field :upper_left, -> { CloudPDF::Types::AnnotationPatchStrikeoutQuadPointsItemUpperLeft }, optional: false, nullable: false, api_name: "upperLeft"

      field :upper_right, -> { CloudPDF::Types::AnnotationPatchStrikeoutQuadPointsItemUpperRight }, optional: false, nullable: false, api_name: "upperRight"

      field :lower_left, -> { CloudPDF::Types::AnnotationPatchStrikeoutQuadPointsItemLowerLeft }, optional: false, nullable: false, api_name: "lowerLeft"

      field :lower_right, -> { CloudPDF::Types::AnnotationPatchStrikeoutQuadPointsItemLowerRight }, optional: false, nullable: false, api_name: "lowerRight"
    end
  end
end
