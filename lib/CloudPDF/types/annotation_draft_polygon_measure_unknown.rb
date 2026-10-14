# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationDraftPolygonMeasureUnknown < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :subtype

      member -> { CloudPDF::Types::AnnotationDraftPolygonMeasureUnknownGeospatial }, key: "GEOSPATIAL"

      member -> { CloudPDF::Types::AnnotationDraftPolygonMeasureUnknownUnknown }, key: "UNKNOWN"
    end
  end
end
