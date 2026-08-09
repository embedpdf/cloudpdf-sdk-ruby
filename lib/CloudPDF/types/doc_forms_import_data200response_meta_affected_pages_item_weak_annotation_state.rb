# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsImportData200ResponseMetaAffectedPagesItemWeakAnnotationState < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocFormsImportData200ResponseMetaAffectedPagesItemWeakAnnotationStateUnknown }, key: "UNKNOWN"

      member -> { CloudPDF::Types::DocFormsImportData200ResponseMetaAffectedPagesItemWeakAnnotationStateKnown }, key: "KNOWN"
    end
  end
end
