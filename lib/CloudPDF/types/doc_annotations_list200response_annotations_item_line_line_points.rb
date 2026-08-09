# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemLineLinePoints < Internal::Types::Model
      field :start, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLineLinePointsStart }, optional: false, nullable: false

      field :end_, -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLineLinePointsEnd }, optional: false, nullable: false, api_name: "end"
    end
  end
end
