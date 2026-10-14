# frozen_string_literal: true

module CloudPDF
  module Types
    class FormWidget < Internal::Types::Model
      field :ref, -> { CloudPDF::Types::AnnotationRef }, optional: false, nullable: true

      field :object_number, -> { Integer }, optional: false, nullable: false, api_name: "objectNumber"

      field :page, -> { CloudPDF::Types::PageRef }, optional: false, nullable: true
    end
  end
end
