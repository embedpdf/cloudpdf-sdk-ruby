# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemLinkTargetGotoDestination < Internal::Types::Model
      extend Cloudpdf::Internal::Types::Union

      discriminant :kind

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemLinkTargetGotoDestinationXyz }, key: "XYZ"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemLinkTargetGotoDestinationFit }, key: "FIT"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemLinkTargetGotoDestinationFitH }, key: "FIT_H"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemLinkTargetGotoDestinationFitV }, key: "FIT_V"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemLinkTargetGotoDestinationFitR }, key: "FIT_R"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemLinkTargetGotoDestinationFitB }, key: "FIT_B"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemLinkTargetGotoDestinationFitBh }, key: "FIT_BH"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemLinkTargetGotoDestinationFitBv }, key: "FIT_BV"
    end
  end
end
