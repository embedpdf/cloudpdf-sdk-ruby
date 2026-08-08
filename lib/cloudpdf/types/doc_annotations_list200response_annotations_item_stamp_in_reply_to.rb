# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemStampInReplyTo < Internal::Types::Model
      extend Cloudpdf::Internal::Types::Union

      discriminant :kind

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemStampInReplyToObjectNumber }, key: "OBJECT_NUMBER"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemStampInReplyToNm }, key: "NM"

      member -> { Cloudpdf::Types::DocAnnotationsList200ResponseAnnotationsItemStampInReplyToIndex }, key: "INDEX"
    end
  end
end
