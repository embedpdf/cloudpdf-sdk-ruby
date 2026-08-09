# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsSetValue200ResponseMetaAffectedPagesItemWeakAnnotationState < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocFormsSetValue200ResponseMetaAffectedPagesItemWeakAnnotationStateUnknown }, key: "UNKNOWN"

      member -> { CloudPDF::Types::DocFormsSetValue200ResponseMetaAffectedPagesItemWeakAnnotationStateKnown }, key: "KNOWN"
    end
  end
end
