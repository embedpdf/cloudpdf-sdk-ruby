# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationDraftLineMeasure < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :subtype

      member -> { CloudPDF::Types::AnnotationDraftLineMeasureRectilinear }, key: "RECTILINEAR"

      member -> { CloudPDF::Types::AnnotationDraftLineMeasureUnknown }, key: "UNKNOWN"
    end
  end
end
