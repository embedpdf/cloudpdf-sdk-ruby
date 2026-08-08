# frozen_string_literal: true

module Cloudpdf
  module Types
    class TokensIssueRequestTenantScopeItem < Internal::Types::Model
      extend Cloudpdf::Internal::Types::Union

      member -> { Cloudpdf::Types::TokensIssueRequestTenantScopeItemZero }

      member -> { Cloudpdf::Types::TokensIssueRequestTenantScopeItemOne }
    end
  end
end
