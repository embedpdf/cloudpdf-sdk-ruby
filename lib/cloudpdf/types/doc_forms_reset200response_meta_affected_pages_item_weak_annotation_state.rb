# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocFormsReset200ResponseMetaAffectedPagesItemWeakAnnotationState < Internal::Types::Model
      extend Cloudpdf::Internal::Types::Union

      discriminant :kind

      member -> { Cloudpdf::Types::DocFormsReset200ResponseMetaAffectedPagesItemWeakAnnotationStateUnknown }, key: "UNKNOWN"

      member -> { Cloudpdf::Types::DocFormsReset200ResponseMetaAffectedPagesItemWeakAnnotationStateKnown }, key: "KNOWN"
    end
  end
end
