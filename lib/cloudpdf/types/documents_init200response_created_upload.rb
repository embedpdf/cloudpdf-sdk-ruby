# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocumentsInit200ResponseCreatedUpload < Internal::Types::Model
      extend Cloudpdf::Internal::Types::Union

      discriminant :kind

      member -> { Cloudpdf::Types::DocumentsInit200ResponseCreatedUploadPresigned }, key: "PRESIGNED"

      member -> { Cloudpdf::Types::DocumentsInit200ResponseCreatedUploadDirect }, key: "DIRECT"
    end
  end
end
