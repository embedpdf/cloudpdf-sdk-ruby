# frozen_string_literal: true

module CloudPDF
  module Types
    module TokensIssueRequestTenantScopeItemOne
      extend CloudPDF::Internal::Types::Enum

      DOCS_CREATE = "docs.create"
      DOCS_READ = "docs.read"
      DOCS_DELETE = "docs.delete"
      TOKENS_ISSUE_DOC = "tokens.issue-doc"
      TOKENS_REVOKE = "tokens.revoke"
    end
  end
end
