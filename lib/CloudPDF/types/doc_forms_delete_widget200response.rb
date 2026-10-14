# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsDeleteWidget200Response < Internal::Types::Model
      field :widget, -> { CloudPDF::Types::AnnotationRef }, optional: false, nullable: false

      field :page, -> { CloudPDF::Types::PageRef }, optional: false, nullable: false

      field :field, -> { CloudPDF::Types::FormField }, optional: false, nullable: true

      field :meta, -> { CloudPDF::Types::FormMutationMeta }, optional: false, nullable: false
    end
  end
end
