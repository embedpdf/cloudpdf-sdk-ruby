# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocumentsCommit200Response < Internal::Types::Model
      field :document, -> { Cloudpdf::Types::DocumentsCommit200ResponseDocument }, optional: false, nullable: false
    end
  end
end
