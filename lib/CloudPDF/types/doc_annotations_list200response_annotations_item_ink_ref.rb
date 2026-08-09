# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemInkRef < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemInkRefObjectNumber }, key: "OBJECT_NUMBER"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemInkRefNm }, key: "NM"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemInkRefIndex }, key: "INDEX"
    end
  end
end
