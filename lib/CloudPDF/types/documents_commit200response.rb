# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsCommit200Response < Internal::Types::Model
      field :document, -> { CloudPDF::Types::DocumentsCommit200ResponseDocument }, optional: false, nullable: false
    end
  end
end
