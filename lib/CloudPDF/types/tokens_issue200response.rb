# frozen_string_literal: true

module CloudPDF
  module Types
    class TokensIssue200Response < Internal::Types::Model
      field :token, -> { String }, optional: false, nullable: false

      field :jti, -> { String }, optional: false, nullable: false

      field :expires_at, -> { Integer }, optional: false, nullable: false, api_name: "expiresAt"
    end
  end
end
