# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesViewports200ResponseViewportsItemMeasure < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :subtype

      member -> { CloudPDF::Types::DocPagesViewports200ResponseViewportsItemMeasureRectilinear }, key: "RECTILINEAR"

      member -> { CloudPDF::Types::DocPagesViewports200ResponseViewportsItemMeasureGeospatial }, key: "GEOSPATIAL"

      member -> { CloudPDF::Types::DocPagesViewports200ResponseViewportsItemMeasureUnknown }, key: "UNKNOWN"
    end
  end
end
