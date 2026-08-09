# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsInit200ResponseResumedUpload < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocumentsInit200ResponseResumedUploadPresigned }, key: "PRESIGNED"

      member -> { CloudPDF::Types::DocumentsInit200ResponseResumedUploadDirect }, key: "DIRECT"
    end
  end
end
