# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocumentsInit200ResponseCreatedUploadPresigned < Internal::Types::Model
      field :presigned, -> { Cloudpdf::Types::DocumentsInit200ResponseCreatedUploadPresignedPresigned }, optional: false, nullable: false

      field :key, -> { String }, optional: false, nullable: false
    end
  end
end
