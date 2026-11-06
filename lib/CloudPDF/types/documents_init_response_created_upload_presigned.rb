# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsInitResponseCreatedUploadPresigned < Internal::Types::Model
      field :presigned, -> { CloudPDF::Types::DocumentsInitResponseCreatedUploadPresignedPresigned }, optional: false, nullable: false

      field :key, -> { String }, optional: false, nullable: false
    end
  end
end
