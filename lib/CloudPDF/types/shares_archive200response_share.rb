# frozen_string_literal: true

module CloudPDF
  module Types
    class SharesArchive200ResponseShare < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"

      field :doc_id, -> { String }, optional: false, nullable: false, api_name: "docId"

      field :layer_mode, -> { CloudPDF::Types::SharesArchive200ResponseShareLayerMode }, optional: false, nullable: false, api_name: "layerMode"

      field :layer_name, -> { String }, optional: false, nullable: true, api_name: "layerName"

      field :keep_visitor_layers, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "keepVisitorLayers"

      field :visitor_idle_seconds, -> { Integer }, optional: false, nullable: true, api_name: "visitorIdleSeconds"

      field :visitor_identity, -> { CloudPDF::Types::SharesArchive200ResponseShareVisitorIdentity }, optional: false, nullable: true, api_name: "visitorIdentity"

      field :identity, -> { CloudPDF::Types::Identity }, optional: false, nullable: true

      field :scope, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :origins, -> { Internal::Types::Array[String] }, optional: false, nullable: true

      field :password_protected, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "passwordProtected"

      field :session_ttl_seconds, -> { Integer }, optional: false, nullable: false, api_name: "sessionTtlSeconds"

      field :disabled, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :archived_at, -> { Integer }, optional: false, nullable: true, api_name: "archivedAt"

      field :expires_at, -> { Integer }, optional: false, nullable: true, api_name: "expiresAt"

      field :exchange_count, -> { Integer }, optional: false, nullable: false, api_name: "exchangeCount"

      field :last_exchanged_at, -> { Integer }, optional: false, nullable: true, api_name: "lastExchangedAt"

      field :created_by, -> { String }, optional: false, nullable: false, api_name: "createdBy"

      field :created_at, -> { Integer }, optional: false, nullable: false, api_name: "createdAt"

      field :updated_at, -> { Integer }, optional: false, nullable: false, api_name: "updatedAt"
    end
  end
end
