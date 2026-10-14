# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationRefObjectNumber < Internal::Types::Model
      field :page, -> { CloudPDF::Types::PageRef }, optional: false, nullable: false

      field :object_number, -> { Integer }, optional: false, nullable: false, api_name: "objectNumber"
    end
  end
end
