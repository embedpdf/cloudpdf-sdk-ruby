# frozen_string_literal: true

module CloudPDF
  module Types
    class GrantsExchangeResponse < Internal::Types::Model
      field :token, -> { String }, optional: false, nullable: false

      field :doc_id, -> { String }, optional: false, nullable: false, api_name: "docId"

      field :layer_name, -> { String }, optional: false, nullable: false, api_name: "layerName"

      field :layer_mode, -> { CloudPDF::Types::GrantsExchangeResponseLayerMode }, optional: false, nullable: false, api_name: "layerMode"

      field :visitor, -> { CloudPDF::Types::GrantsExchangeResponseVisitor }, optional: false, nullable: false

      field :expires_at, -> { String }, optional: false, nullable: false, api_name: "expiresAt"
    end
  end
end
