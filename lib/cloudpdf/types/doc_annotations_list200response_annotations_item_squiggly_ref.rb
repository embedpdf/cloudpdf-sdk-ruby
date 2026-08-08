# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemSquigglyRef < Internal::Types::Model
      extend Cloudpdf::Internal::Types::Union

      discriminant :kind

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemSquigglyRefObjectNumber }, key: "OBJECT_NUMBER"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemSquigglyRefNm }, key: "NM"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemSquigglyRefIndex }, key: "INDEX"
    end
  end
end
