# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationDraftPolylineMeasure < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :subtype

      member -> { CloudPDF::Types::AnnotationDraftPolylineMeasureRectilinear }, key: "RECTILINEAR"

      member -> { CloudPDF::Types::AnnotationDraftPolylineMeasureUnknown }, key: "UNKNOWN"
    end
  end
end
