# frozen_string_literal: true

module CloudPDF
  module Doc
    module Forms
      module Types
        class DocFormsReorderCalculationsRequest < Internal::Types::Model
          field :doc_id, -> { String }, optional: false, nullable: false, api_name: "docId"

          field :layer_name, -> { String }, optional: false, nullable: false, api_name: "layerName"

          field :document_password, -> { String }, optional: true, nullable: false, api_name: "X-Document-Password"

          field :idempotency_key, -> { String }, optional: true, nullable: false, api_name: "Idempotency-Key"

          field :fields, -> { Internal::Types::Array[CloudPDF::Types::FormFieldRef] }, optional: false, nullable: false

          field :position, -> { CloudPDF::Types::FieldPosition }, optional: false, nullable: false
        end
      end
    end
  end
end
