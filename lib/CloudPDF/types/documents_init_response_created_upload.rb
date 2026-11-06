# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsInitResponseCreatedUpload < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocumentsInitResponseCreatedUploadPresigned }, key: "PRESIGNED"

      member -> { CloudPDF::Types::DocumentsInitResponseCreatedUploadProxy }, key: "PROXY"
    end
  end
end
