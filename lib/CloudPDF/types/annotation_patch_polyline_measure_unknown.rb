# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPatchPolylineMeasureUnknown < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :subtype

      member -> { CloudPDF::Types::AnnotationPatchPolylineMeasureUnknownGeospatial }, key: "GEOSPATIAL"

      member -> { CloudPDF::Types::AnnotationPatchPolylineMeasureUnknownUnknown }, key: "UNKNOWN"
    end
  end
end
