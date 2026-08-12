# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsInit200ResponseCreatedUpload < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocumentsInit200ResponseCreatedUploadPresigned }, key: "PRESIGNED"

      member -> { CloudPDF::Types::DocumentsInit200ResponseCreatedUploadProxy }, key: "PROXY"
    end
  end
end
