# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemInkRef < Internal::Types::Model
      extend Cloudpdf::Internal::Types::Union

      discriminant :kind

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemInkRefObjectNumber }, key: "OBJECT_NUMBER"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemInkRefNm }, key: "NM"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemInkRefIndex }, key: "INDEX"
    end
  end
end
