# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationRefBaseIndex < Internal::Types::Model
      field :page, -> { CloudPDF::Types::PageRef }, optional: false, nullable: false

      field :base_index, -> { Integer }, optional: false, nullable: false, api_name: "baseIndex"
    end
  end
end
