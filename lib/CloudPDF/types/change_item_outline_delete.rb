# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemOutlineDelete < Internal::Types::Model
      field :meta, -> { CloudPDF::Types::OutlineMutationMeta }, optional: false, nullable: false
    end
  end
end
