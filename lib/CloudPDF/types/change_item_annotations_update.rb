# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemAnnotationsUpdate < Internal::Types::Model
      field :page, -> { CloudPDF::Types::PageRef }, optional: false, nullable: false

      field :skipped, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :annotation, -> { CloudPDF::Types::Annotation }, optional: false, nullable: false

      field :appearance, -> { CloudPDF::Types::ChangeItemAnnotationsUpdateAppearance }, optional: false, nullable: false

      field :meta, -> { CloudPDF::Types::AnnotationMutationMeta }, optional: false, nullable: false
    end
  end
end
