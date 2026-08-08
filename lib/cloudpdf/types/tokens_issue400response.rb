# frozen_string_literal: true

module Cloudpdf
  module Types
    class TokensIssue400Response < Internal::Types::Model
      field :error, -> { Cloudpdf::Types::TokensIssue400ResponseError }, optional: false, nullable: false
    end
  end
end
