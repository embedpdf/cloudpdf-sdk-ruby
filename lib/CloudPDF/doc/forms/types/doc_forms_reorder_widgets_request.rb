# frozen_string_literal: true

module CloudPDF
  module Doc
    module Forms
      module Types
        class DocFormsReorderWidgetsRequest < Internal::Types::Model
          field :doc_id, -> { String }, optional: false, nullable: false, api_name: "docId"

          field :layer_name, -> { String }, optional: false, nullable: false, api_name: "layerName"

          field :page_key, -> { String }, optional: false, nullable: false, api_name: "pageKey"

          field :document_password, -> { String }, optional: true, nullable: false, api_name: "X-Document-Password"

          field :idempotency_key, -> { String }, optional: true, nullable: false, api_name: "Idempotency-Key"

          field :widgets, -> { Internal::Types::Array[CloudPDF::Types::AnnotationRef] }, optional: false, nullable: false

          field :position, -> { CloudPDF::Types::AnnotationPosition }, optional: false, nullable: false
        end
      end
    end
  end
end
