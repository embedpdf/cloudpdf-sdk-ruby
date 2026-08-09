# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsDelete200ResponseMetaAffectedPagesItemWeakAnnotationState < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocAnnotationsDelete200ResponseMetaAffectedPagesItemWeakAnnotationStateUnknown }, key: "UNKNOWN"

      member -> { CloudPDF::Types::DocAnnotationsDelete200ResponseMetaAffectedPagesItemWeakAnnotationStateKnown }, key: "KNOWN"
    end
  end
end
