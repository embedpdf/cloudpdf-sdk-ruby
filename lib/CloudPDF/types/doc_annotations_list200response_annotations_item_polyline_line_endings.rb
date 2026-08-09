# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemPolylineLineEndings < Internal::Types::Model
      field :start, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemPolylineLineEndingsStart }, optional: false, nullable: false

      field :end_, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemPolylineLineEndingsEnd }, optional: false, nullable: false, api_name: "end"
    end
  end
end
