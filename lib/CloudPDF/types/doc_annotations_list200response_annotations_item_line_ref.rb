# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemLineRef < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLineRefObjectNumber }, key: "OBJECT_NUMBER"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLineRefNm }, key: "NM"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemLineRefIndex }, key: "INDEX"
    end
  end
end
