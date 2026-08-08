# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsUpdate200ResponseMetaAffectedPagesItemWeakAnnotationState < Internal::Types::Model
      extend Cloudpdf::Internal::Types::Union

      discriminant :kind

      member -> { Cloudpdf::Types::DocAnnotationsUpdate200ResponseMetaAffectedPagesItemWeakAnnotationStateUnknown }, key: "UNKNOWN"

      member -> { Cloudpdf::Types::DocAnnotationsUpdate200ResponseMetaAffectedPagesItemWeakAnnotationStateKnown }, key: "KNOWN"
    end
  end
end
