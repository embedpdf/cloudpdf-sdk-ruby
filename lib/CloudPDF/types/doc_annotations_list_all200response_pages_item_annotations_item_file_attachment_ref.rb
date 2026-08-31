# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItemAnnotationsItemFileAttachmentRef < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemFileAttachmentRefObjectNumber }, key: "OBJECT_NUMBER"

      member -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemFileAttachmentRefNm }, key: "NM"

      member -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemFileAttachmentRefIndex }, key: "INDEX"
    end
  end
end
