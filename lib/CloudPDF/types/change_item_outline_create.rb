# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemOutlineCreate < Internal::Types::Model
      field :item, -> { CloudPDF::Types::OutlineItem }, optional: false, nullable: false

      field :order, -> { CloudPDF::Types::OutlineOrder }, optional: false, nullable: false

      field :meta, -> { CloudPDF::Types::OutlineMutationMeta }, optional: false, nullable: false
    end
  end
end
