# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationDraftLineLineEndings < Internal::Types::Model
      field :start, -> { CloudPDF::Types::AnnotationDraftLineLineEndingsStart }, optional: false, nullable: false

      field :end_, -> { CloudPDF::Types::AnnotationDraftLineLineEndingsEnd }, optional: false, nullable: false, api_name: "end"
    end
  end
end
