# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocumentsGet404Response < Internal::Types::Model
      field :error, -> { Cloudpdf::Types::DocumentsGet404ResponseError }, optional: false, nullable: false
    end
  end
end
