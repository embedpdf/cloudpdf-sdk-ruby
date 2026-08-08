# frozen_string_literal: true

module Cloudpdf
  module Types
    class TokensIssue404Response < Internal::Types::Model
      field :error, -> { Cloudpdf::Types::TokensIssue404ResponseError }, optional: false, nullable: false
    end
  end
end
