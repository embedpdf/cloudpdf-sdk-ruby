# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationDraftPolygonMeasure < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :subtype

      member -> { CloudPDF::Types::AnnotationDraftPolygonMeasureRectilinear }, key: "RECTILINEAR"

      member -> { CloudPDF::Types::AnnotationDraftPolygonMeasureUnknown }, key: "UNKNOWN"
    end
  end
end
