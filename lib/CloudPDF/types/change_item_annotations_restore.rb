# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemAnnotationsRestore < Internal::Types::Model
      field :page, -> { CloudPDF::Types::PageRef }, optional: false, nullable: false

      field :annotations, -> { Internal::Types::Array[CloudPDF::Types::Annotation] }, optional: false, nullable: false

      field :meta, -> { CloudPDF::Types::AnnotationMutationMeta }, optional: false, nullable: false
    end
  end
end
