# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsInit200ResponseResumedUploadPresigned < Internal::Types::Model
      field :presigned, -> { CloudPDF::Types::DocumentsInit200ResponseResumedUploadPresignedPresigned }, optional: false, nullable: false

      field :key, -> { String }, optional: false, nullable: false
    end
  end
end
