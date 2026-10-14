# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPatchPolylineMeasure < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :subtype

      member -> { CloudPDF::Types::AnnotationPatchPolylineMeasureRectilinear }, key: "RECTILINEAR"

      member -> { CloudPDF::Types::AnnotationPatchPolylineMeasureUnknown }, key: "UNKNOWN"
    end
  end
end
