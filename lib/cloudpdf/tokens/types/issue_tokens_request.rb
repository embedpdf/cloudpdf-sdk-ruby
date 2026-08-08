# frozen_string_literal: true

module Cloudpdf
  module Tokens
    module Types
      class IssueTokensRequest < Internal::Types::Model
        field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"

        field :body, -> { Cloudpdf::Types::TokensIssueRequest }, optional: false, nullable: false
      end
    end
  end
end
