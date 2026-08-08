# frozen_string_literal: true

module Cloudpdf
  module Types
    class TokensRevokeResponse < Internal::Types::Model
      field :error, -> { Cloudpdf::Types::TokensRevokeResponseError }, optional: false, nullable: false
    end
  end
end
