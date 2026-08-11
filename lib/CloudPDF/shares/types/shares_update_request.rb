# frozen_string_literal: true

module CloudPDF
  module Shares
    module Types
      class SharesUpdateRequest < Internal::Types::Model
        field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"

        field :share_id, -> { String }, optional: false, nullable: false, api_name: "shareId"

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
