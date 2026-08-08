# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocumentsInit400Response < Internal::Types::Model
      field :error, -> { Cloudpdf::Types::DocumentsInit400ResponseError }, optional: false, nullable: false
    end
  end
end
