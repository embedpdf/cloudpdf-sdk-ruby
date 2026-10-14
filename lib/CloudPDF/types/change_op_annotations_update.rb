# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeOpAnnotationsUpdate < Internal::Types::Model
      field :ref, -> { CloudPDF::Types::AnnotationRef }, optional: false, nullable: false

      field :patch, -> { CloudPDF::Types::AnnotationPatch }, optional: false, nullable: false

      field :resources, -> { CloudPDF::Types::ChangeOpAnnotationsUpdateResources }, optional: true, nullable: false

      field :expect, -> { CloudPDF::Types::AnnotationPatch }, optional: true, nullable: false
    end
  end
end
