# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemPolygonMeasure < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :subtype

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemPolygonMeasureRl }, key: "RL"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemPolygonMeasureGeo }, key: "GEO"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemPolygonMeasureUnknown }, key: "UNKNOWN"
    end
  end
end
