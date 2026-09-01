# frozen_string_literal: true

module CloudPDF
  module Types
    class PdfDestination < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::PdfDestinationXyz }, key: "XYZ"

      member -> { CloudPDF::Types::PdfDestinationFit }, key: "FIT"

      member -> { CloudPDF::Types::PdfDestinationFitH }, key: "FIT_H"

      member -> { CloudPDF::Types::PdfDestinationFitV }, key: "FIT_V"

      member -> { CloudPDF::Types::PdfDestinationFitR }, key: "FIT_R"

      member -> { CloudPDF::Types::PdfDestinationFitB }, key: "FIT_B"

      member -> { CloudPDF::Types::PdfDestinationFitBh }, key: "FIT_BH"

      member -> { CloudPDF::Types::PdfDestinationFitBv }, key: "FIT_BV"
    end
  end
end
