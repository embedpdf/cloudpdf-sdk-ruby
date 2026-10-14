# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPatchLineLineEndings < Internal::Types::Model
      field :start, -> { CloudPDF::Types::AnnotationPatchLineLineEndingsStart }, optional: false, nullable: false

      field :end_, -> { CloudPDF::Types::AnnotationPatchLineLineEndingsEnd }, optional: false, nullable: false, api_name: "end"
    end
  end
end
