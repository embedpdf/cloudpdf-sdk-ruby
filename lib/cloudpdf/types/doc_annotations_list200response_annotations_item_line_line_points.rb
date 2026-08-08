# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemLineLinePoints < Internal::Types::Model
      field :start, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemLineLinePointsStart }, optional: false, nullable: false

      field :end_, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemLineLinePointsEnd }, optional: false, nullable: false, api_name: "end"
    end
  end
end
