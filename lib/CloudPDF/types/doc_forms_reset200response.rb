# frozen_string_literal: true

module CloudPDF
  module Types
    class DocFormsReset200Response < Internal::Types::Model
      field :fields, -> { Internal::Types::Array[CloudPDF::Types::FormField] }, optional: false, nullable: false

      field :widgets, -> { Internal::Types::Array[CloudPDF::Types::WidgetAnnotation] }, optional: false, nullable: false

      field :meta, -> { CloudPDF::Types::FormMutationMeta }, optional: false, nullable: false
    end
  end
end
