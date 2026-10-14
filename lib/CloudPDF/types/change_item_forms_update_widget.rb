# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeItemFormsUpdateWidget < Internal::Types::Model
      field :skipped, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :widget, -> { CloudPDF::Types::WidgetAnnotation }, optional: false, nullable: false

      field :appearance, -> { CloudPDF::Types::ChangeItemFormsUpdateWidgetAppearance }, optional: false, nullable: false

      field :meta, -> { CloudPDF::Types::FormMutationMeta }, optional: false, nullable: false
    end
  end
end
