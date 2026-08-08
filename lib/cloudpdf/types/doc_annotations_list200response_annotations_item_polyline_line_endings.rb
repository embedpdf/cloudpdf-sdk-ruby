# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemPolylineLineEndings < Internal::Types::Model
      field :start, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemPolylineLineEndingsStart }, optional: false, nullable: false

      field :end_, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemPolylineLineEndingsEnd }, optional: false, nullable: false, api_name: "end"
    end
  end
end
