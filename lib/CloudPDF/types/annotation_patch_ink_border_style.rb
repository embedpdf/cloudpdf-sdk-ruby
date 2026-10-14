# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPatchInkBorderStyle < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      member -> { CloudPDF::Types::AnnotationPatchInkBorderStyleZero }

      member -> { CloudPDF::Types::AnnotationPatchInkBorderStyleOne }
    end
  end
end
