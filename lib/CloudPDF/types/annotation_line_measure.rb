# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationLineMeasure < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :subtype

      member -> { CloudPDF::Types::AnnotationLineMeasureRectilinear }, key: "RECTILINEAR"

      member -> { CloudPDF::Types::AnnotationLineMeasureGeospatial }, key: "GEOSPATIAL"

      member -> { CloudPDF::Types::AnnotationLineMeasureUnknown }, key: "UNKNOWN"
    end
  end
end
