# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponsePageStateWeakAnnotationState < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocAnnotationsList200ResponsePageStateWeakAnnotationStateUnknown }, key: "UNKNOWN"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponsePageStateWeakAnnotationStateKnown }, key: "KNOWN"
    end
  end
end
