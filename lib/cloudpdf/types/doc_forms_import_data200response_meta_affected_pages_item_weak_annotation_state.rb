# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocFormsImportData200ResponseMetaAffectedPagesItemWeakAnnotationState < Internal::Types::Model
      extend Cloudpdf::Internal::Types::Union

      discriminant :kind

      member -> { Cloudpdf::Types::DocFormsImportData200ResponseMetaAffectedPagesItemWeakAnnotationStateUnknown }, key: "UNKNOWN"

      member -> { Cloudpdf::Types::DocFormsImportData200ResponseMetaAffectedPagesItemWeakAnnotationStateKnown }, key: "KNOWN"
    end
  end
end
