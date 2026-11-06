# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsUpdateWidgetResponse < Internal::Types::Model
      field :widget, -> { CloudPDF::Types::WidgetAnnotation }, optional: false, nullable: false

      field :appearance, -> { CloudPDF::Types::DocFormsUpdateWidgetResponseAppearance }, optional: false, nullable: false

      field :meta, -> { CloudPDF::Types::FormMutationMeta }, optional: false, nullable: false
    end
  end
end
