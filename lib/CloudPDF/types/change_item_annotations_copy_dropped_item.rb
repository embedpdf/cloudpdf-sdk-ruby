# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemAnnotationsCopyDroppedItem < Internal::Types::Model
      field :ref, -> { CloudPDF::Types::AnnotationRef }, optional: false, nullable: false

      field :field, -> { String }, optional: true, nullable: false

      field :reason, -> { CloudPDF::Types::ChangeItemAnnotationsCopyDroppedItemReason }, optional: false, nullable: false
    end
  end
end
