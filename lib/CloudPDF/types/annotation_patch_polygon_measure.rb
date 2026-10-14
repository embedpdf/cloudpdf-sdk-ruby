# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPatchPolygonMeasure < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :subtype

      member -> { CloudPDF::Types::AnnotationPatchPolygonMeasureRectilinear }, key: "RECTILINEAR"

      member -> { CloudPDF::Types::AnnotationPatchPolygonMeasureUnknown }, key: "UNKNOWN"
    end
  end
end
