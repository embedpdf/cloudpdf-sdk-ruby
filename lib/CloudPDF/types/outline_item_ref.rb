# frozen_string_literal: true

module CloudPDF
  module Types
    class OutlineItemRef < Internal::Types::Model
      field :kind, -> { CloudPDF::Types::OutlineItemRefKind }, optional: false, nullable: false

      field :object_number, -> { Integer }, optional: false, nullable: false, api_name: "objectNumber"
    end
  end
end
