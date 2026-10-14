# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemSkipped < Internal::Types::Model
      field :op, -> { CloudPDF::Types::ChangeItemSkippedOp }, optional: false, nullable: false

      field :meta, -> { CloudPDF::Types::MutationMeta }, optional: false, nullable: false
    end
  end
end
