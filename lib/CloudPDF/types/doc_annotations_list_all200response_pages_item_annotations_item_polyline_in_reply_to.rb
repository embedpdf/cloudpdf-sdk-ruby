# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItemAnnotationsItemPolylineInReplyTo < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemPolylineInReplyToObjectNumber }, key: "OBJECT_NUMBER"

      member -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemPolylineInReplyToNm }, key: "NM"

      member -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemPolylineInReplyToIndex }, key: "INDEX"
    end
  end
end
