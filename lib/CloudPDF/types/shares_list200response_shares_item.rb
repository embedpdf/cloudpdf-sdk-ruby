# frozen_string_literal: true

module CloudPDF
  module Types
    class SharesList200ResponseSharesItem < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"

      field :doc_id, -> { String }, optional: false, nullable: false, api_name: "docId"

      field :layer_name, -> { String }, optional: false, nullable: false, api_name: "layerName"

      field :scope, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :origins, -> { Internal::Types::Array[String] }, optional: false, nullable: true

      field :password_protected, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "passwordProtected"

      field :session_ttl_seconds, -> { Integer }, optional: false, nullable: false, api_name: "sessionTtlSeconds"

      field :disabled, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :expires_at, -> { Integer }, optional: false, nullable: true, api_name: "expiresAt"

      field :exchange_count, -> { Integer }, optional: false, nullable: false, api_name: "exchangeCount"

      field :last_exchanged_at, -> { Integer }, optional: false, nullable: true, api_name: "lastExchangedAt"

      field :created_by, -> { String }, optional: false, nullable: false, api_name: "createdBy"

      field :created_at, -> { Integer }, optional: false, nullable: false, api_name: "createdAt"

      field :updated_at, -> { Integer }, optional: false, nullable: false, api_name: "updatedAt"
    end
  end
end
