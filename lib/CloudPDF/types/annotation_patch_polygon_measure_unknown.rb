# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPatchPolygonMeasureUnknown < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :subtype

      member -> { CloudPDF::Types::AnnotationPatchPolygonMeasureUnknownGeospatial }, key: "GEOSPATIAL"

      member -> { CloudPDF::Types::AnnotationPatchPolygonMeasureUnknownUnknown }, key: "UNKNOWN"
    end
  end
end
