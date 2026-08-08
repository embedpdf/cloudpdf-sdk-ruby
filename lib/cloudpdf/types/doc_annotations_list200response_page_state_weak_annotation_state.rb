# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsList200ResponsePageStateWeakAnnotationState < Internal::Types::Model
      extend Cloudpdf::Internal::Types::Union

      discriminant :kind

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponsePageStateWeakAnnotationStateUnknown }, key: "UNKNOWN"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponsePageStateWeakAnnotationStateKnown }, key: "KNOWN"
    end
  end
end
