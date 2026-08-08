# frozen_string_literal: true

module Cloudpdf
  module Tokens
    module Types
      class TokensRevokeRequest < Internal::Types::Model
        field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"

        field :jti, -> { String }, optional: false, nullable: false

        field :reason, -> { String }, optional: true, nullable: false

        field :expires_at_seconds, -> { Integer }, optional: true, nullable: false, api_name: "expiresAtSeconds"
      end
    end
  end
end
