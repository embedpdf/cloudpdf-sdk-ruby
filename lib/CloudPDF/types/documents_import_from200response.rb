# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsImportFrom200Response < Internal::Types::Model
      field :tag, -> { CloudPDF::Types::DocumentsImportFrom200ResponseTag }, optional: false, nullable: false

      field :document, -> { CloudPDF::Types::DocumentsImportFrom200ResponseDocument }, optional: false, nullable: false
    end
  end
end
