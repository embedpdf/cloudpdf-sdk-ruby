# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocPagesFlatten200ResponseMetaAffectedPagesItemWeakAnnotationState < Internal::Types::Model
      extend Cloudpdf::Internal::Types::Union

      discriminant :kind

      member -> { Cloudpdf::Types::DocPagesFlatten200ResponseMetaAffectedPagesItemWeakAnnotationStateUnknown }, key: "UNKNOWN"

      member -> { Cloudpdf::Types::DocPagesFlatten200ResponseMetaAffectedPagesItemWeakAnnotationStateKnown }, key: "KNOWN"
    end
  end
end
