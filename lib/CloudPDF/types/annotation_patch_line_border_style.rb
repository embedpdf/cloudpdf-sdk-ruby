# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPatchLineBorderStyle < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      member -> { CloudPDF::Types::AnnotationPatchLineBorderStyleZero }

      member -> { CloudPDF::Types::AnnotationPatchLineBorderStyleOne }
    end
  end
end
