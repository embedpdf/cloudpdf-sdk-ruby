# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsCommitResponse < Internal::Types::Model
      field :document, -> { CloudPDF::Types::DocumentsCommitResponseDocument }, optional: false, nullable: false
    end
  end
end
