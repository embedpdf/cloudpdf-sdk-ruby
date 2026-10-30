# frozen_string_literal: true

module CloudPDF
  module Grants
    module Types
      class GrantsUpdateRequest < Internal::Types::Model
        field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"

        field :grant_id, -> { String }, optional: false, nullable: false, api_name: "grantId"

        field :name, -> { String }, optional: true, nullable: false

        field :layer_mode, -> { CloudPDF::Grants::Types::GrantsUpdateRequestLayerMode }, optional: true, nullable: false, api_name: "layerMode"

        field :layer_name, -> { String }, optional: true, nullable: false, api_name: "layerName"

        field :keep_visitor_layers, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "keepVisitorLayers"

        field :visitor_idle_seconds, -> { Integer }, optional: true, nullable: false, api_name: "visitorIdleSeconds"

        field :visitor_identity, -> { CloudPDF::Grants::Types::GrantsUpdateRequestVisitorIdentity }, optional: true, nullable: false, api_name: "visitorIdentity"

        field :identity, -> { CloudPDF::Types::Identity }, optional: true, nullable: false

        field :scope, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :origins, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :passphrase, -> { String }, optional: true, nullable: false

        field :session_ttl_seconds, -> { Integer }, optional: true, nullable: false, api_name: "sessionTtlSeconds"

        field :disabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :expires_at, -> { Integer }, optional: true, nullable: false, api_name: "expiresAt"
      end
    end
  end
end
