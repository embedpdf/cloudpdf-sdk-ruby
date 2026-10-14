# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPatchPolylineVertices < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      member -> { Internal::Types::Array[CloudPDF::Types::AnnotationPatchPolylineVerticesZeroItem] }

      member -> { Internal::Types::Array[CloudPDF::Types::AnnotationPatchPolylineVerticesOneItem] }
    end
  end
end
