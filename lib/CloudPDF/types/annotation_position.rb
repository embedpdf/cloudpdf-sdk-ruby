# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPosition < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      member -> { CloudPDF::Types::AnnotationPositionZero }

      member -> { CloudPDF::Types::AnnotationPositionAfter }
    end
  end
end
