# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationLineLineEndings < Internal::Types::Model
      field :start, -> { CloudPDF::Types::AnnotationLineLineEndingsStart }, optional: false, nullable: false

      field :end_, -> { CloudPDF::Types::AnnotationLineLineEndingsEnd }, optional: false, nullable: false, api_name: "end"
    end
  end
end
