# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItemAnnotationsItemInkInReplyTo < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemInkInReplyToObjectNumber }, key: "OBJECT_NUMBER"

      member -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemInkInReplyToNm }, key: "NM"

      member -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemInkInReplyToIndex }, key: "INDEX"
    end
  end
end
