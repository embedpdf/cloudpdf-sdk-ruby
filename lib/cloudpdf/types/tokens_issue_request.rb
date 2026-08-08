# frozen_string_literal: true

module Cloudpdf
  module Types
    class TokensIssueRequest < Internal::Types::Model
      extend Cloudpdf::Internal::Types::Union

      discriminant :kind

      member -> { Cloudpdf::Types::TokensIssueRequestDoc }, key: "DOC"

      member -> { Cloudpdf::Types::TokensIssueRequestTenant }, key: "TENANT"
    end
  end
end
