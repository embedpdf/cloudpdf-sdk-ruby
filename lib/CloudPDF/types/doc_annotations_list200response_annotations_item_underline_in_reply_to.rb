# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemUnderlineInReplyTo < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemUnderlineInReplyToObjectNumber }, key: "OBJECT_NUMBER"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemUnderlineInReplyToNm }, key: "NM"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemUnderlineInReplyToIndex }, key: "INDEX"
    end
  end
end
