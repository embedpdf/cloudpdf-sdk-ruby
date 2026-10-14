# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeOpFormsDeleteWidget < Internal::Types::Model
      field :widget, -> { CloudPDF::Types::AnnotationRef }, optional: false, nullable: false

      field :expect, -> { CloudPDF::Types::WidgetPatch }, optional: true, nullable: false
    end
  end
end
