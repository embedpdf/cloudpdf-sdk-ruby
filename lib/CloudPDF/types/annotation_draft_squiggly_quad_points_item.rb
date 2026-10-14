# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationDraftSquigglyQuadPointsItem < Internal::Types::Model
      field :upper_left, -> { CloudPDF::Types::AnnotationDraftSquigglyQuadPointsItemUpperLeft }, optional: false, nullable: false, api_name: "upperLeft"

      field :upper_right, -> { CloudPDF::Types::AnnotationDraftSquigglyQuadPointsItemUpperRight }, optional: false, nullable: false, api_name: "upperRight"

      field :lower_left, -> { CloudPDF::Types::AnnotationDraftSquigglyQuadPointsItemLowerLeft }, optional: false, nullable: false, api_name: "lowerLeft"

      field :lower_right, -> { CloudPDF::Types::AnnotationDraftSquigglyQuadPointsItemLowerRight }, optional: false, nullable: false, api_name: "lowerRight"
    end
  end
end
