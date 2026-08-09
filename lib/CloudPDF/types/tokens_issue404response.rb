# frozen_string_literal: true

module CloudPDF
  module Types
    class TokensIssue404Response < Internal::Types::Model
      field :error, -> { CloudPDF::Types::TokensIssue404ResponseError }, optional: false, nullable: false
    end
  end
end
