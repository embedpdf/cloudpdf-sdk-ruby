# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationDraftLineMeasureUnknown < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :subtype

      member -> { CloudPDF::Types::AnnotationDraftLineMeasureUnknownGeospatial }, key: "GEOSPATIAL"

      member -> { CloudPDF::Types::AnnotationDraftLineMeasureUnknownUnknown }, key: "UNKNOWN"
    end
  end
end
