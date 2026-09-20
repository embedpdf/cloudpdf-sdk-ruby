# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemLineMeasure < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :subtype

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLineMeasureRl }, key: "RL"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLineMeasureGeo }, key: "GEO"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLineMeasureUnknown }, key: "UNKNOWN"
    end
  end
end
