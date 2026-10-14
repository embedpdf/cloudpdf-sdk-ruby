# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeOpFormsReorderWidgets < Internal::Types::Model
      field :page, -> { CloudPDF::Types::PageRef }, optional: false, nullable: false

      field :widgets, -> { Internal::Types::Array[CloudPDF::Types::AnnotationRef] }, optional: false, nullable: false

      field :position, -> { CloudPDF::Types::AnnotationPosition }, optional: false, nullable: false
    end
  end
end
