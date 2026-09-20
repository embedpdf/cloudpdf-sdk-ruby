# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemPolylineMeasure < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :subtype

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemPolylineMeasureRl }, key: "RL"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemPolylineMeasureGeo }, key: "GEO"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemPolylineMeasureUnknown }, key: "UNKNOWN"
    end
  end
end
