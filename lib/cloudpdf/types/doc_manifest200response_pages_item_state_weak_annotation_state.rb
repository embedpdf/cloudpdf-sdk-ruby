# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocManifest200ResponsePagesItemStateWeakAnnotationState < Internal::Types::Model
      extend Cloudpdf::Internal::Types::Union

      discriminant :kind

      member -> { Cloudpdf::Types::DocManifest200ResponsePagesItemStateWeakAnnotationStateUnknown }, key: "UNKNOWN"

      member -> { Cloudpdf::Types::DocManifest200ResponsePagesItemStateWeakAnnotationStateKnown }, key: "KNOWN"
    end
  end
end
