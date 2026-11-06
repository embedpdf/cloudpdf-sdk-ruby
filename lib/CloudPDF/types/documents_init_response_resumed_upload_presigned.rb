# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsInitResponseResumedUploadPresigned < Internal::Types::Model
      field :presigned, -> { CloudPDF::Types::DocumentsInitResponseResumedUploadPresignedPresigned }, optional: false, nullable: false

      field :key, -> { String }, optional: false, nullable: false
    end
  end
end
