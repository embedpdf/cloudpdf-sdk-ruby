# frozen_string_literal: true

module CloudPDF
  module Types
    class PageDestination < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::PageDestinationXyz }, key: "XYZ"

      member -> { CloudPDF::Types::PageDestinationFit }, key: "FIT"

      member -> { CloudPDF::Types::PageDestinationFitH }, key: "FIT_H"

      member -> { CloudPDF::Types::PageDestinationFitV }, key: "FIT_V"

      member -> { CloudPDF::Types::PageDestinationFitR }, key: "FIT_R"

      member -> { CloudPDF::Types::PageDestinationFitB }, key: "FIT_B"

      member -> { CloudPDF::Types::PageDestinationFitBh }, key: "FIT_BH"

      member -> { CloudPDF::Types::PageDestinationFitBv }, key: "FIT_BV"
    end
  end
end
