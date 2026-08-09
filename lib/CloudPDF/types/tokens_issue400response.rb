# frozen_string_literal: true

module CloudPDF
  module Types
    class TokensIssue400Response < Internal::Types::Model
      field :error, -> { CloudPDF::Types::TokensIssue400ResponseError }, optional: false, nullable: false
    end
  end
end
