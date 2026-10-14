# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPatchCircleBorderStyle < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      member -> { CloudPDF::Types::AnnotationPatchCircleBorderStyleZero }

      member -> { CloudPDF::Types::AnnotationPatchCircleBorderStyleOne }
    end
  end
end
