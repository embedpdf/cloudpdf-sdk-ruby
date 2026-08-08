# frozen_string_literal: true

module Cloudpdf
  module Types
    class TokensIssue403Response < Internal::Types::Model
      field :error, -> { Cloudpdf::Types::TokensIssue403ResponseError }, optional: false, nullable: false
    end
  end
end
