# frozen_string_literal: true

module CloudPDF
  module Types
    class DocPagesSetScale200ResponseMetaAffectedPagesItemWeakAnnotationState < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocPagesSetScale200ResponseMetaAffectedPagesItemWeakAnnotationStateUnknown }, key: "UNKNOWN"

      member -> { CloudPDF::Types::DocPagesSetScale200ResponseMetaAffectedPagesItemWeakAnnotationStateKnown }, key: "KNOWN"
    end
  end
end
