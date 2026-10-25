# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemOutlineMove < Internal::Types::Model
      field :orders, -> { Internal::Types::Array[CloudPDF::Types::OutlineOrder] }, optional: false, nullable: false

      field :meta, -> { CloudPDF::Types::OutlineMutationMeta }, optional: false, nullable: false
    end
  end
end
