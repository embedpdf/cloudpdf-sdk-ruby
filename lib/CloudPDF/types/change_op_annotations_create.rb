# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeOpAnnotationsCreate < Internal::Types::Model
      field :page, -> { CloudPDF::Types::PageRef }, optional: false, nullable: false

      field :data, -> { CloudPDF::Types::AnnotationDraft }, optional: false, nullable: false

      field :object_number, -> { Integer }, optional: true, nullable: false, api_name: "objectNumber"

      field :resources, -> { CloudPDF::Types::ChangeOpAnnotationsCreateResources }, optional: true, nullable: false
    end
  end
end
