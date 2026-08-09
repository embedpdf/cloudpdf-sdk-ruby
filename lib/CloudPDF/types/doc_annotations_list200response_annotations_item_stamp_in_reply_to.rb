# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemStampInReplyTo < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemStampInReplyToObjectNumber }, key: "OBJECT_NUMBER"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemStampInReplyToNm }, key: "NM"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemStampInReplyToIndex }, key: "INDEX"
    end
  end
end
