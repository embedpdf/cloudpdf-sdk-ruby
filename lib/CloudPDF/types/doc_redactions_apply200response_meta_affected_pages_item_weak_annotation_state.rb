# frozen_string_literal: true

module CloudPDF
  module Types
    class DocRedactionsApply200ResponseMetaAffectedPagesItemWeakAnnotationState < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocRedactionsApply200ResponseMetaAffectedPagesItemWeakAnnotationStateUnknown }, key: "UNKNOWN"

      member -> { CloudPDF::Types::DocRedactionsApply200ResponseMetaAffectedPagesItemWeakAnnotationStateKnown }, key: "KNOWN"
    end
  end
end
