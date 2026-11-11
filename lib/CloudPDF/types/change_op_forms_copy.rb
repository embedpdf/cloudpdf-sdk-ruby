# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeOpFormsCopy < Internal::Types::Model
      field :fields, -> { Internal::Types::Array[CloudPDF::Types::FormFieldRef] }, optional: false, nullable: false

      field :widgets, -> { Internal::Types::Array[CloudPDF::Types::AnnotationRef] }, optional: true, nullable: false

      field :page, -> { CloudPDF::Types::PageRef }, optional: true, nullable: false

      field :offset, -> { CloudPDF::Types::ChangeOpFormsCopyOffset }, optional: true, nullable: false

      field :values, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :object_numbers, -> { Internal::Types::Array[Integer] }, optional: true, nullable: false, api_name: "objectNumbers"
    end
  end
end
