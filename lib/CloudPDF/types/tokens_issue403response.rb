# frozen_string_literal: true

module CloudPDF
  module Types
    class TokensIssue403Response < Internal::Types::Model
      field :error, -> { CloudPDF::Types::TokensIssue403ResponseError }, optional: false, nullable: false
    end
  end
end
