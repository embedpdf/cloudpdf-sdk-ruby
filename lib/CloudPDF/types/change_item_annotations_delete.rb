# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemAnnotationsDelete < Internal::Types::Model
      field :page, -> { CloudPDF::Types::PageRef }, optional: false, nullable: false

      field :meta, -> { CloudPDF::Types::AnnotationMutationMeta }, optional: false, nullable: false
    end
  end
end
