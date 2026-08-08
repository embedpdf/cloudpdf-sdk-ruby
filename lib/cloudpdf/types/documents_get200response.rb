# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocumentsGet200Response < Internal::Types::Model
      field :document, -> { Cloudpdf::Types::DocumentsGet200ResponseDocument }, optional: false, nullable: false
    end
  end
end
