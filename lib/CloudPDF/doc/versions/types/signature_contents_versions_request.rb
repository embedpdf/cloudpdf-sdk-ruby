# frozen_string_literal: true

module CloudPDF
  module Doc
    module Versions
      module Types
        class SignatureContentsVersionsRequest < Internal::Types::Model
          field :doc_id, -> { String }, optional: false, nullable: false, api_name: "docId"

          field :layer_name, -> { String }, optional: false, nullable: false, api_name: "layerName"

          field :sha, -> { String }, optional: false, nullable: false

          field :field_key, -> { String }, optional: false, nullable: false, api_name: "fieldKey"

          field :document_password, -> { String }, optional: true, nullable: false, api_name: "X-Document-Password"
        end
      end
    end
  end
end
