# frozen_string_literal: true

module CloudPDF
  module Doc
    module Signatures
      module Types
        class DocSignaturesAddValidationInfoRequest < Internal::Types::Model
          field :doc_id, -> { String }, optional: false, nullable: false, api_name: "docId"

          field :layer_name, -> { String }, optional: false, nullable: false, api_name: "layerName"

          field :document_password, -> { String }, optional: true, nullable: false, api_name: "X-Document-Password"

          field :idempotency_key, -> { String }, optional: true, nullable: false, api_name: "Idempotency-Key"

          field :certificates, -> { Internal::Types::Array[String] }, optional: true, nullable: false

          field :ocsp_responses, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "ocspResponses"

          field :crls, -> { Internal::Types::Array[String] }, optional: true, nullable: false
        end
      end
    end
  end
end
