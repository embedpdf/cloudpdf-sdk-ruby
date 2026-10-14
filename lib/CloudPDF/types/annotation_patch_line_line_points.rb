# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPatchLineLinePoints < Internal::Types::Model
      field :start, -> { CloudPDF::Types::AnnotationPatchLineLinePointsStart }, optional: false, nullable: false

      field :end_, -> { CloudPDF::Types::AnnotationPatchLineLinePointsEnd }, optional: false, nullable: false, api_name: "end"
    end
  end
end
