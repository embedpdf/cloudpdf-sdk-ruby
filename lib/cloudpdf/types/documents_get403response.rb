# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocumentsGet403Response < Internal::Types::Model
      field :error, -> { Cloudpdf::Types::DocumentsGet403ResponseError }, optional: false, nullable: false
    end
  end
end
