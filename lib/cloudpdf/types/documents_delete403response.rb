# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocumentsDelete403Response < Internal::Types::Model
      field :error, -> { Cloudpdf::Types::DocumentsDelete403ResponseError }, optional: false, nullable: false
    end
  end
end
