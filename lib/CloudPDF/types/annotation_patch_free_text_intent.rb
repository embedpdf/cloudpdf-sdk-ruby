# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPatchFreeTextIntent < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      member -> { CloudPDF::Types::AnnotationPatchFreeTextIntentZero }

      member -> { CloudPDF::Types::AnnotationPatchFreeTextIntentOne }
    end
  end
end
