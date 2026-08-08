# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemLineLineEndings < Internal::Types::Model
      field :start, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemLineLineEndingsStart }, optional: false, nullable: false

      field :end_, -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemLineLineEndingsEnd }, optional: false, nullable: false, api_name: "end"
    end
  end
end
