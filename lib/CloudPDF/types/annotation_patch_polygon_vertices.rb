# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPatchPolygonVertices < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      member -> { Internal::Types::Array[CloudPDF::Types::AnnotationPatchPolygonVerticesZeroItem] }

      member -> { Internal::Types::Array[CloudPDF::Types::AnnotationPatchPolygonVerticesOneItem] }
    end
  end
end
