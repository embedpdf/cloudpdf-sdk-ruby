# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationLineLinePoints < Internal::Types::Model
      field :start, -> { CloudPDF::Types::AnnotationLineLinePointsStart }, optional: false, nullable: false

      field :end_, -> { CloudPDF::Types::AnnotationLineLinePointsEnd }, optional: false, nullable: false, api_name: "end"
    end
  end
end
