# frozen_string_literal: true

module CloudPDF
  module Shares
    module Types
      class SharesCreateRequest < Internal::Types::Model
        field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"

        field :doc_id, -> { String }, optional: false, nullable: false, api_name: "docId"

        field :layer_mode, -> { CloudPDF::Shares::Types::SharesCreateRequestLayerMode }, optional: true, nullable: false, api_name: "layerMode"

        field :layer_name, -> { String }, optional: true, nullable: false, api_name: "layerName"

        field :keep_visitor_layers, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "keepVisitorLayers"

        field :visitor_idle_seconds, -> { Integer }, optional: true, nullable: false, api_name: "visitorIdleSeconds"

        field :visitor_identity, -> { CloudPDF::Shares::Types::SharesCreateRequestVisitorIdentity }, optional: true, nullable: false, api_name: "visitorIdentity"

        field :identity, -> { CloudPDF::Types::Identity }, optional: true, nullable: false

        field :scope, -> { Internal::Types::Array[String] }, optional: false, nullable: false

        field :origins, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :password, -> { String }, optional: true, nullable: false

        field :session_ttl_seconds, -> { Integer }, optional: true, nullable: false, api_name: "sessionTtlSeconds"

        field :expires_at, -> { Integer }, optional: true, nullable: false, api_name: "expiresAt"
      end
    end
  end
end
