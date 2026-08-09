# frozen_string_literal: true

module CloudPDF
  module Types
    class TokensIssueRequest < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::TokensIssueRequestDoc }, key: "DOC"

      member -> { CloudPDF::Types::TokensIssueRequestTenant }, key: "TENANT"
    end
  end
end
