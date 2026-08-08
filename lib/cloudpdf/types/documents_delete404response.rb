# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocumentsDelete404Response < Internal::Types::Model
      field :error, -> { Cloudpdf::Types::DocumentsDelete404ResponseError }, optional: false, nullable: false
    end
  end
end
