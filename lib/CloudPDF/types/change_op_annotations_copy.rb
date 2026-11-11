# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeOpAnnotationsCopy < Internal::Types::Model
      field :refs, -> { Internal::Types::Array[CloudPDF::Types::AnnotationRef] }, optional: false, nullable: false

      field :page, -> { CloudPDF::Types::PageRef }, optional: true, nullable: false

      field :offset, -> { CloudPDF::Types::ChangeOpAnnotationsCopyOffset }, optional: true, nullable: false

      field :object_numbers, -> { Internal::Types::Array[Integer] }, optional: true, nullable: false, api_name: "objectNumbers"
    end
  end
end
