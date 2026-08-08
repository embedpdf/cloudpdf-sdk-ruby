# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocumentsCommit404Response < Internal::Types::Model
      field :error, -> { Cloudpdf::Types::DocumentsCommit404ResponseError }, optional: false, nullable: false
    end
  end
end
