# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsReorder200Response < Internal::Types::Model
      field :order, -> { Internal::Types::Array[CloudPDF::Types::AnnotationRef] }, optional: false, nullable: false

      field :meta, -> { CloudPDF::Types::AnnotationMutationMeta }, optional: false, nullable: false
    end
  end
end
