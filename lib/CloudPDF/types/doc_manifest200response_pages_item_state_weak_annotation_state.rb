# frozen_string_literal: true

module CloudPDF
  module Types
    class DocManifest200ResponsePagesItemStateWeakAnnotationState < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocManifest200ResponsePagesItemStateWeakAnnotationStateUnknown }, key: "UNKNOWN"

      member -> { CloudPDF::Types::DocManifest200ResponsePagesItemStateWeakAnnotationStateKnown }, key: "KNOWN"
    end
  end
end
