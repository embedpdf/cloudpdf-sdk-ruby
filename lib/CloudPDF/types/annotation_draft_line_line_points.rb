# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationDraftLineLinePoints < Internal::Types::Model
      field :start, -> { CloudPDF::Types::AnnotationDraftLineLinePointsStart }, optional: false, nullable: false

      field :end_, -> { CloudPDF::Types::AnnotationDraftLineLinePointsEnd }, optional: false, nullable: false, api_name: "end"
    end
  end
end
