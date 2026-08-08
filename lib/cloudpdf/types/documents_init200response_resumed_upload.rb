# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocumentsInit200ResponseResumedUpload < Internal::Types::Model
      extend Cloudpdf::Internal::Types::Union

      discriminant :kind

      member -> { Cloudpdf::Types::DocumentsInit200ResponseResumedUploadPresigned }, key: "PRESIGNED"

      member -> { Cloudpdf::Types::DocumentsInit200ResponseResumedUploadDirect }, key: "DIRECT"
    end
  end
end
