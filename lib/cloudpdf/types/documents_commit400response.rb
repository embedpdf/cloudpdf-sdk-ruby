# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocumentsCommit400Response < Internal::Types::Model
      field :error, -> { Cloudpdf::Types::DocumentsCommit400ResponseError }, optional: false, nullable: false
    end
  end
end
