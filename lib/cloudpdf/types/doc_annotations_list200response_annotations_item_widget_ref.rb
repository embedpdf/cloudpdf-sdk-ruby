# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemWidgetRef < Internal::Types::Model
      extend Cloudpdf::Internal::Types::Union

      discriminant :kind

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemWidgetRefObjectNumber }, key: "OBJECT_NUMBER"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemWidgetRefNm }, key: "NM"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemWidgetRefIndex }, key: "INDEX"
    end
  end
end
