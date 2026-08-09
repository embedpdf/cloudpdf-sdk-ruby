# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsInit200ResponseCreated < Internal::Types::Model
      field :document, -> { CloudPDF::Types::DocumentsInit200ResponseCreatedDocument }, optional: false, nullable: false

      field :upload, -> { CloudPDF::Types::DocumentsInit200ResponseCreatedUpload }, optional: false, nullable: false
    end
  end
end
