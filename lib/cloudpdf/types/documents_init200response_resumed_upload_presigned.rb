# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocumentsInit200ResponseResumedUploadPresigned < Internal::Types::Model
      field :presigned, -> { Cloudpdf::Types::DocumentsInit200ResponseResumedUploadPresignedPresigned }, optional: false, nullable: false

      field :key, -> { String }, optional: false, nullable: false
    end
  end
end
