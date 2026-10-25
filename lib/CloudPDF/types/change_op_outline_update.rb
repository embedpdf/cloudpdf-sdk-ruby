# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeOpOutlineUpdate < Internal::Types::Model
      field :ref, -> { CloudPDF::Types::OutlineItemRef }, optional: false, nullable: false

      field :patch, -> { CloudPDF::Types::OutlineItemPatch }, optional: false, nullable: false

      field :expect, -> { CloudPDF::Types::OutlineItemPatch }, optional: true, nullable: false
    end
  end
end
