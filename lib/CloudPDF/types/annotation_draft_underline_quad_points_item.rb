# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationDraftUnderlineQuadPointsItem < Internal::Types::Model
      field :upper_left, -> { CloudPDF::Types::AnnotationDraftUnderlineQuadPointsItemUpperLeft }, optional: false, nullable: false, api_name: "upperLeft"

      field :upper_right, -> { CloudPDF::Types::AnnotationDraftUnderlineQuadPointsItemUpperRight }, optional: false, nullable: false, api_name: "upperRight"

      field :lower_left, -> { CloudPDF::Types::AnnotationDraftUnderlineQuadPointsItemLowerLeft }, optional: false, nullable: false, api_name: "lowerLeft"

      field :lower_right, -> { CloudPDF::Types::AnnotationDraftUnderlineQuadPointsItemLowerRight }, optional: false, nullable: false, api_name: "lowerRight"
    end
  end
end
