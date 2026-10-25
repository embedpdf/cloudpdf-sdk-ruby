# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeOpOutlineCreate < Internal::Types::Model
      field :parent, -> { CloudPDF::Types::OutlineItemRef }, optional: false, nullable: true

      field :position, -> { CloudPDF::Types::OutlinePosition }, optional: true, nullable: false

      field :data, -> { CloudPDF::Types::OutlineItemDraft }, optional: false, nullable: false

      field :object_number, -> { Integer }, optional: true, nullable: false, api_name: "objectNumber"
    end
  end
end
