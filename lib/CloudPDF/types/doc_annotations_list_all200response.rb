# frozen_string_literal: true

module CloudPDF
  module Types
    class DocAnnotationsListAll200Response < Internal::Types::Model
      field :pages, -> { Internal::Types::Array[CloudPDF::Types::DocAnnotationsListAll200ResponsePagesItem] }, optional: false, nullable: false

      field :audit_head, -> { Integer }, optional: true, nullable: false, api_name: "auditHead"
    end
  end
end
