# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItemAnnotationsItemLineMeasure < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :subtype

      member -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemLineMeasureRl }, key: "RL"

      member -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemLineMeasureGeo }, key: "GEO"

      member -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemLineMeasureUnknown }, key: "UNKNOWN"
    end
  end
end
