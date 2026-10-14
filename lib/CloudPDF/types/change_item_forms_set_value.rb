# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemFormsSetValue < Internal::Types::Model
      field :field, -> { CloudPDF::Types::FormField }, optional: false, nullable: false

      field :widgets, -> { Internal::Types::Array[CloudPDF::Types::WidgetAnnotation] }, optional: false, nullable: false

      field :meta, -> { CloudPDF::Types::FormMutationMeta }, optional: false, nullable: false
    end
  end
end
