# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsCreateResponse < Internal::Types::Model
      field :annotation, -> { CloudPDF::Types::Annotation }, optional: false, nullable: false

      field :meta, -> { CloudPDF::Types::AnnotationMutationMeta }, optional: false, nullable: false
    end
  end
end
