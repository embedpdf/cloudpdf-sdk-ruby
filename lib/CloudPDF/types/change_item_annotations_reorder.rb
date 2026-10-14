# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemAnnotationsReorder < Internal::Types::Model
      field :page, -> { CloudPDF::Types::PageRef }, optional: false, nullable: false

      field :order, -> { Internal::Types::Array[CloudPDF::Types::AnnotationRef] }, optional: false, nullable: false

      field :meta, -> { CloudPDF::Types::AnnotationMutationMeta }, optional: false, nullable: false
    end
  end
end
