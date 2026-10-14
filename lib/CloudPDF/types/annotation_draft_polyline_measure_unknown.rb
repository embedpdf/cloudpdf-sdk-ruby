# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationDraftPolylineMeasureUnknown < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :subtype

      member -> { CloudPDF::Types::AnnotationDraftPolylineMeasureUnknownGeospatial }, key: "GEOSPATIAL"

      member -> { CloudPDF::Types::AnnotationDraftPolylineMeasureUnknownUnknown }, key: "UNKNOWN"
    end
  end
end
