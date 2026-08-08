# frozen_string_literal: true

module Cloudpdf
  module Types
    class TokensIssueRequestTenant < Internal::Types::Model
      field :sub, -> { String }, optional: false, nullable: false

      field :scope, -> { Internal::Types::Array[Cloudpdf::Types::TokensIssueRequestTenantScopeItem] }, optional: false, nullable: false

      field :expires_in, -> { Integer }, optional: false, nullable: false, api_name: "expiresIn"
    end
  end
end
