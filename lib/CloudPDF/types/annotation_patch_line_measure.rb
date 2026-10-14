# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPatchLineMeasure < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :subtype

      member -> { CloudPDF::Types::AnnotationPatchLineMeasureRectilinear }, key: "RECTILINEAR"

      member -> { CloudPDF::Types::AnnotationPatchLineMeasureUnknown }, key: "UNKNOWN"
    end
  end
end
