# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsImportFrom200Response < Internal::Types::Model
      field :status, -> { CloudPDF::Types::DocumentsImportFrom200ResponseStatus }, optional: false, nullable: false

      field :document, -> { CloudPDF::Types::DocumentsImportFrom200ResponseDocument }, optional: false, nullable: false
    end
  end
end
