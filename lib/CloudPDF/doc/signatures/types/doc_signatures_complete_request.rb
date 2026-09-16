# frozen_string_literal: true

module CloudPDF
  module Doc
    module Signatures
      module Types
        class DocSignaturesCompleteRequest < Internal::Types::Model
          field :doc_id, -> { String }, optional: false, nullable: false, api_name: "docId"

          field :layer_name, -> { String }, optional: false, nullable: false, api_name: "layerName"

          field :signing_id, -> { String }, optional: false, nullable: false, api_name: "signingId"

          field :document_password, -> { String }, optional: true, nullable: false, api_name: "X-Document-Password"

          field :cms, -> { String }, optional: false, nullable: false

          field :expected_version, -> { CloudPDF::Doc::Signatures::Types::DocSignaturesCompleteRequestExpectedVersion }, optional: false, nullable: false, api_name: "expectedVersion"
        end
      end
    end
  end
end
