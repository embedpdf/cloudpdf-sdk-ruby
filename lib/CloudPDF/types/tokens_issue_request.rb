# frozen_string_literal: true

module CloudPDF
  module Types
    class TokensIssueRequest < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::TokensIssueRequestDoc }, key: "DOC"

      member -> { CloudPDF::Types::TokensIssueRequestTenant }, key: "TENANT"

      member -> { CloudPDF::Types::TokensIssueRequestUpload }, key: "UPLOAD"
    end
  end
end
