# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeOpFormsRemoveWidget < Internal::Types::Model
      field :field, -> { CloudPDF::Types::FormFieldRef }, optional: false, nullable: false

      field :widget, -> { CloudPDF::Types::AnnotationRef }, optional: false, nullable: false
    end
  end
end
