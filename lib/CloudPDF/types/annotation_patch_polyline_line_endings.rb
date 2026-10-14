# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPatchPolylineLineEndings < Internal::Types::Model
      field :start, -> { CloudPDF::Types::AnnotationPatchPolylineLineEndingsStart }, optional: false, nullable: false

      field :end_, -> { CloudPDF::Types::AnnotationPatchPolylineLineEndingsEnd }, optional: false, nullable: false, api_name: "end"
    end
  end
end
