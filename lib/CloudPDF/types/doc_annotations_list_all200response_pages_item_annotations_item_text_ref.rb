# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200ResponsePagesItemAnnotationsItemTextRef < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemTextRefObjectNumber }, key: "OBJECT_NUMBER"

      member -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemTextRefNm }, key: "NM"

      member -> { CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItemAnnotationsItemTextRefIndex }, key: "INDEX"
    end
  end
end
