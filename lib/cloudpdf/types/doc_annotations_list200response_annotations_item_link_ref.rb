# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemLinkRef < Internal::Types::Model
      extend Cloudpdf::Internal::Types::Union

      discriminant :kind

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemLinkRefObjectNumber }, key: "OBJECT_NUMBER"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemLinkRefNm }, key: "NM"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemLinkRefIndex }, key: "INDEX"
    end
  end
end
