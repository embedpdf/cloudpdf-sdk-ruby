# frozen_string_literal: true

module CloudPDF
  module Types
    class SharesExchange200Response < Internal::Types::Model
      field :token, -> { String }, optional: false, nullable: false

      field :doc_id, -> { String }, optional: false, nullable: false, api_name: "docId"

      field :layer_name, -> { String }, optional: false, nullable: false, api_name: "layerName"

      field :expires_at, -> { Integer }, optional: false, nullable: false, api_name: "expiresAt"
    end
  end
end
