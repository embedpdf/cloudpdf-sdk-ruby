# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationRef < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::AnnotationRefObjectNumber }, key: "OBJECT_NUMBER"

      member -> { CloudPDF::Types::AnnotationRefBaseIndex }, key: "BASE_INDEX"
    end
  end
end
