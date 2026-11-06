# frozen_string_literal: true

module CloudPDF
  module Types
    # A measure, by its `subtype`. A newer server can add subtypes: read one your client doesn't know as `unknown`.
    class PdfMeasurement < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :subtype

      member -> { CloudPDF::Types::PdfMeasurementRectilinear }, key: "RECTILINEAR"

      member -> { CloudPDF::Types::PdfMeasurementGeospatial }, key: "GEOSPATIAL"

      member -> { CloudPDF::Types::PdfMeasurementUnknown }, key: "UNKNOWN"
    end
  end
end
