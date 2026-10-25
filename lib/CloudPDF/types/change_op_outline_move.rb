# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeOpOutlineMove < Internal::Types::Model
      field :refs, -> { Internal::Types::Array[CloudPDF::Types::OutlineItemRef] }, optional: false, nullable: false

      field :parent, -> { CloudPDF::Types::OutlineItemRef }, optional: false, nullable: true

      field :position, -> { CloudPDF::Types::OutlinePosition }, optional: false, nullable: false
    end
  end
end
