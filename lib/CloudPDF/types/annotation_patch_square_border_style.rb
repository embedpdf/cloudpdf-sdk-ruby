# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPatchSquareBorderStyle < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      member -> { CloudPDF::Types::AnnotationPatchSquareBorderStyleZero }

      member -> { CloudPDF::Types::AnnotationPatchSquareBorderStyleOne }
    end
  end
end
