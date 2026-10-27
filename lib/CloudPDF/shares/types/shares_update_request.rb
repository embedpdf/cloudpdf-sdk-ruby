# frozen_string_literal: true

module CloudPDF
  module Shares
    module Types
      class SharesUpdateRequest < Internal::Types::Model
        field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"

        field :share_id, -> { String }, optional: false, nullable: false, api_name: "shareId"

        field :layer_mode, -> { CloudPDF::Shares::Types::SharesUpdateRequestLayerMode }, optional: true, nullable: false, api_name: "layerMode"

        field :layer_name, -> { String }, optional: true, nullable: false, api_name: "layerName"

        field :keep_visitor_layers, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "keepVisitorLayers"

        field :visitor_idle_seconds, -> { Integer }, optional: true, nullable: false, api_name: "visitorIdleSeconds"

        field :visitor_identity, -> { CloudPDF::Shares::Types::SharesUpdateRequestVisitorIdentity }, optional: true, nullable: false, api_name: "visitorIdentity"

        field :scope, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :origins, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :password, -> { String }, optional: true, nullable: false

        field :session_ttl_seconds, -> { Integer }, optional: true, nullable: false, api_name: "sessionTtlSeconds"

        field :disabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :expires_at, -> { Integer }, optional: true, nullable: false, api_name: "expiresAt"
      end
    end
  end
end
