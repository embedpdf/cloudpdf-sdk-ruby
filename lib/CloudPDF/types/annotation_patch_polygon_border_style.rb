# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPatchPolygonBorderStyle < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      member -> { CloudPDF::Types::AnnotationPatchPolygonBorderStyleZero }

      member -> { CloudPDF::Types::AnnotationPatchPolygonBorderStyleOne }
    end
  end
end
