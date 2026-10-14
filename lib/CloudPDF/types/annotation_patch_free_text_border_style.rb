# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPatchFreeTextBorderStyle < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      member -> { CloudPDF::Types::AnnotationPatchFreeTextBorderStyleZero }

      member -> { CloudPDF::Types::AnnotationPatchFreeTextBorderStyleOne }
    end
  end
end
