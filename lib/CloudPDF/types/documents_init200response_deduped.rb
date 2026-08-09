# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsInit200ResponseDeduped < Internal::Types::Model
      field :document, -> { CloudPDF::Types::DocumentsInit200ResponseDedupedDocument }, optional: false, nullable: false
    end
  end
end
