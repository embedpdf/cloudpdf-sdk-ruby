# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemOutlineUpdate < Internal::Types::Model
      field :skipped, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :item, -> { CloudPDF::Types::OutlineItem }, optional: false, nullable: false

      field :meta, -> { CloudPDF::Types::OutlineMutationMeta }, optional: false, nullable: false
    end
  end
end
