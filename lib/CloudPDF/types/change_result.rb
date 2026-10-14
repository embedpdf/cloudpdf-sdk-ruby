# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeResult < Internal::Types::Model
      field :items, -> { Internal::Types::Array[CloudPDF::Types::ChangeItem] }, optional: false, nullable: false

      field :meta, -> { CloudPDF::Types::MutationMeta }, optional: false, nullable: false
    end
  end
end
