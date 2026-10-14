# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPolylineLineEndings < Internal::Types::Model
      field :start, -> { CloudPDF::Types::AnnotationPolylineLineEndingsStart }, optional: false, nullable: false

      field :end_, -> { CloudPDF::Types::AnnotationPolylineLineEndingsEnd }, optional: false, nullable: false, api_name: "end"
    end
  end
end
