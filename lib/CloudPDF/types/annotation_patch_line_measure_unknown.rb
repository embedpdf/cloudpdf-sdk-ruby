# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPatchLineMeasureUnknown < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :subtype

      member -> { CloudPDF::Types::AnnotationPatchLineMeasureUnknownGeospatial }, key: "GEOSPATIAL"

      member -> { CloudPDF::Types::AnnotationPatchLineMeasureUnknownUnknown }, key: "UNKNOWN"
    end
  end
end
