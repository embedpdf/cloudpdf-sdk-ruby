# frozen_string_literal: true

module CloudPDF
  module Types
    class TokensRevokeResponse < Internal::Types::Model
      field :error, -> { CloudPDF::Types::TokensRevokeResponseError }, optional: false, nullable: false
    end
  end
end
