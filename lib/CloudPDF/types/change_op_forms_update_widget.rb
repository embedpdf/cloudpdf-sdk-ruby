# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeOpFormsUpdateWidget < Internal::Types::Model
      field :widget, -> { CloudPDF::Types::AnnotationRef }, optional: false, nullable: false

      field :patch, -> { CloudPDF::Types::WidgetPatch }, optional: false, nullable: false

      field :expect, -> { CloudPDF::Types::WidgetPatch }, optional: true, nullable: false
    end
  end
end
