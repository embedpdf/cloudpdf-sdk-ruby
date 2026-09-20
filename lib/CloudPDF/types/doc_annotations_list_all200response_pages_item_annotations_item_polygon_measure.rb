# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItemAnnotationsItemPolygonMeasure < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :subtype

      member -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemPolygonMeasureRl }, key: "RL"

      member -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemPolygonMeasureGeo }, key: "GEO"

      member -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemPolygonMeasureUnknown }, key: "UNKNOWN"
    end
  end
end
