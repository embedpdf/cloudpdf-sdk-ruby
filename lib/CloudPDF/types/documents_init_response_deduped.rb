# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsInitResponseDeduped < Internal::Types::Model
      field :document, -> { CloudPDF::Types::DocumentsInitResponseDedupedDocument }, optional: false, nullable: false
    end
  end
end
