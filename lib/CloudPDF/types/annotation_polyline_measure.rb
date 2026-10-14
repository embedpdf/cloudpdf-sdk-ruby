# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPolylineMeasure < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :subtype

      member -> { CloudPDF::Types::AnnotationPolylineMeasureRectilinear }, key: "RECTILINEAR"

      member -> { CloudPDF::Types::AnnotationPolylineMeasureGeospatial }, key: "GEOSPATIAL"

      member -> { CloudPDF::Types::AnnotationPolylineMeasureUnknown }, key: "UNKNOWN"
    end
  end
end
