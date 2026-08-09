# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsInit200ResponseCreatedUploadPresigned < Internal::Types::Model
      field :presigned, -> { CloudPDF::Types::DocumentsInit200ResponseCreatedUploadPresignedPresigned }, optional: false, nullable: false

      field :key, -> { String }, optional: false, nullable: false
    end
  end
end
