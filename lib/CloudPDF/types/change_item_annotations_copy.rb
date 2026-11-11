# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemAnnotationsCopy < Internal::Types::Model
      field :annotations, -> { Internal::Types::Array[CloudPDF::Types::Annotation] }, optional: false, nullable: false

      field :ref_map, -> { Internal::Types::Array[CloudPDF::Types::ChangeItemAnnotationsCopyRefMapItem] }, optional: false, nullable: false, api_name: "refMap"

      field :dropped, -> { Internal::Types::Array[CloudPDF::Types::ChangeItemAnnotationsCopyDroppedItem] }, optional: false, nullable: false

      field :meta, -> { CloudPDF::Types::AnnotationMutationMeta }, optional: false, nullable: false
    end
  end
end
