# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeOpOutlineDelete < Internal::Types::Model
      field :ref, -> { CloudPDF::Types::OutlineItemRef }, optional: false, nullable: false

      field :expect, -> { CloudPDF::Types::OutlineItemPatch }, optional: true, nullable: false
    end
  end
end
