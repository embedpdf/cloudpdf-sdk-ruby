# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationDraftPolylineLineEndings < Internal::Types::Model
      field :start, -> { CloudPDF::Types::AnnotationDraftPolylineLineEndingsStart }, optional: false, nullable: false

      field :end_, -> { CloudPDF::Types::AnnotationDraftPolylineLineEndingsEnd }, optional: false, nullable: false, api_name: "end"
    end
  end
end
