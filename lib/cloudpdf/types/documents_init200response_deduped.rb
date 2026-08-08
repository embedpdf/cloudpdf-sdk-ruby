# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocumentsInit200ResponseDeduped < Internal::Types::Model
      field :document, -> { Cloudpdf::Types::DocumentsInit200ResponseDedupedDocument }, optional: false, nullable: false
    end
  end
end
