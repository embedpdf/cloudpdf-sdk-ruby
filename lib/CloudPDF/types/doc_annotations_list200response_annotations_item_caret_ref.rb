# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsList200ResponseAnnotationsItemCaretRef < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemCaretRefObjectNumber }, key: "OBJECT_NUMBER"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemCaretRefNm }, key: "NM"

      member -> { CloudPDF::Types::DocAnnotationsList200ResponseAnnotationsItemCaretRefIndex }, key: "INDEX"
    end
  end
end
