# frozen_string_literal: true

module CloudPDF
  module Types
    class TokensIssueRequestTenantScopeItem < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      member -> { CloudPDF::Types::TokensIssueRequestTenantScopeItemZero }

      member -> { CloudPDF::Types::TokensIssueRequestTenantScopeItemOne }
    end
  end
end
