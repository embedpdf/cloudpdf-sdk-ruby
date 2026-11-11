# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemFormsCopyDroppedItem < Internal::Types::Model
      field :ref, -> { CloudPDF::Types::FormFieldRef }, optional: false, nullable: true

      field :widget, -> { CloudPDF::Types::AnnotationRef }, optional: true, nullable: false

      field :field, -> { String }, optional: true, nullable: false

      field :reason, -> { CloudPDF::Types::ChangeItemFormsCopyDroppedItemReason }, optional: false, nullable: false
    end
  end
end
