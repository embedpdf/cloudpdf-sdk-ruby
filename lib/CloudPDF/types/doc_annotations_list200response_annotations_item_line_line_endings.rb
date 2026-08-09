# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemLineLineEndings < Internal::Types::Model
      field :start, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLineLineEndingsStart }, optional: false, nullable: false

      field :end_, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLineLineEndingsEnd }, optional: false, nullable: false, api_name: "end"
    end
  end
end
