# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsInitResponseCreated < Internal::Types::Model
      field :document, -> { CloudPDF::Types::DocumentsInitResponseCreatedDocument }, optional: false, nullable: false

      field :upload, -> { CloudPDF::Types::DocumentsInitResponseCreatedUpload }, optional: false, nullable: false
    end
  end
end
