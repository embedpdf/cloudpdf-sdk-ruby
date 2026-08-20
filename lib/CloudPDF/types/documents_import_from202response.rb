# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsImportFrom202Response < Internal::Types::Model
      field :tag, -> { CloudPDF::Types::DocumentsImportFrom202ResponseTag }, optional: false, nullable: false

      field :document, -> { CloudPDF::Types::DocumentsImportFrom202ResponseDocument }, optional: false, nullable: false
    end
  end
end
