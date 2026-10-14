# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationPositionAfter < Internal::Types::Model
      field :before, -> { CloudPDF::Types::AnnotationRef }, optional: true, nullable: false

      field :after, -> { CloudPDF::Types::AnnotationRef }, optional: true, nullable: false
    end
  end
end
