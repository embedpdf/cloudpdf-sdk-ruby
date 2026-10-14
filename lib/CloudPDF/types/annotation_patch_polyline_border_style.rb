# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPatchPolylineBorderStyle < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      member -> { CloudPDF::Types::AnnotationPatchPolylineBorderStyleZero }

      member -> { CloudPDF::Types::AnnotationPatchPolylineBorderStyleOne }
    end
  end
end
