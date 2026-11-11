# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemAnnotationsCopyRefMapItem < Internal::Types::Model
      field :from, -> { CloudPDF::Types::AnnotationRef }, optional: false, nullable: false

      field :to, -> { CloudPDF::Types::AnnotationRef }, optional: false, nullable: false
    end
  end
end
