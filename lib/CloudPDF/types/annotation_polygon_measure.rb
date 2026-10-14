# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPolygonMeasure < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :subtype

      member -> { CloudPDF::Types::AnnotationPolygonMeasureRectilinear }, key: "RECTILINEAR"

      member -> { CloudPDF::Types::AnnotationPolygonMeasureGeospatial }, key: "GEOSPATIAL"

      member -> { CloudPDF::Types::AnnotationPolygonMeasureUnknown }, key: "UNKNOWN"
    end
  end
end
