# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemOutlineRestore < Internal::Types::Model
      field :items, -> { Internal::Types::Array[CloudPDF::Types::OutlineItem] }, optional: false, nullable: false

      field :order, -> { CloudPDF::Types::OutlineOrder }, optional: false, nullable: false

      field :meta, -> { CloudPDF::Types::OutlineMutationMeta }, optional: false, nullable: false
    end
  end
end
