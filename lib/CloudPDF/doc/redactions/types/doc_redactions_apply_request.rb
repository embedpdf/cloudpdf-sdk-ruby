# frozen_string_literal: true

module CloudPDF
  module Doc
    module Redactions
      module Types
        class DocRedactionsApplyRequest < Internal::Types::Model
          field :doc_id, -> { String }, optional: false, nullable: false, api_name: "docId"

          field :layer_name, -> { String }, optional: false, nullable: false, api_name: "layerName"

          field :document_password, -> { String }, optional: true, nullable: false, api_name: "X-Document-Password"

          field :idempotency_key, -> { String }, optional: true, nullable: false, api_name: "Idempotency-Key"

          field :pages, -> { Internal::Types::Array[CloudPDF::Types::PageRef] }, optional: true, nullable: false

          field :annotations, -> { Internal::Types::Array[CloudPDF::Types::AnnotationRef] }, optional: true, nullable: false
        end
      end
    end
  end
end
