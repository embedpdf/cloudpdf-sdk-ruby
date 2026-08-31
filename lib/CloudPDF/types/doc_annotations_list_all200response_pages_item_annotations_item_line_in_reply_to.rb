# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItemAnnotationsItemLineInReplyTo < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemLineInReplyToObjectNumber }, key: "OBJECT_NUMBER"

      member -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemLineInReplyToNm }, key: "NM"

      member -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemLineInReplyToIndex }, key: "INDEX"
    end
  end
end
