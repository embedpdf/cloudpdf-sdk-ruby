# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsReorderWidgets200Response < Internal::Types::Model
      field :page, -> { CloudPDF::Types::PageRef }, optional: false, nullable: false

      field :order, -> { Internal::Types::Array[CloudPDF::Types::AnnotationRef] }, optional: false, nullable: false

      field :meta, -> { CloudPDF::Types::FormMutationMeta }, optional: false, nullable: false
    end
  end
end
