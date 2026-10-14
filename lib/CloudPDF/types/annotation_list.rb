# frozen_string_literal: true

module CloudPDF
  module Types
    class AnnotationList < Internal::Types::Model
      field :annotations, -> { Internal::Types::Array[CloudPDF::Types::Annotation] }, optional: false, nullable: false

      field :pages, -> { Internal::Types::Array[CloudPDF::Types::PageRef] }, optional: false, nullable: false

      field :audit_head, -> { Integer }, optional: true, nullable: false, api_name: "auditHead"
    end
  end
end
