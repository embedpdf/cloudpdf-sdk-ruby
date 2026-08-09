# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemLinkTargetGotoDestination < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLinkTargetGotoDestinationXyz }, key: "XYZ"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLinkTargetGotoDestinationFit }, key: "FIT"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLinkTargetGotoDestinationFitH }, key: "FIT_H"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLinkTargetGotoDestinationFitV }, key: "FIT_V"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLinkTargetGotoDestinationFitR }, key: "FIT_R"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLinkTargetGotoDestinationFitB }, key: "FIT_B"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLinkTargetGotoDestinationFitBh }, key: "FIT_BH"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLinkTargetGotoDestinationFitBv }, key: "FIT_BV"
    end
  end
end
