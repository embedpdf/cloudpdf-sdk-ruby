# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeOpAnnotationsDelete < Internal::Types::Model
      field :ref, -> { CloudPDF::Types::AnnotationRef }, optional: false, nullable: false

      field :expect, -> { CloudPDF::Types::AnnotationPatch }, optional: true, nullable: false
    end
  end
end
