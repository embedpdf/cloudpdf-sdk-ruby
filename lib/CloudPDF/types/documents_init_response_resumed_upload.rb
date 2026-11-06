# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsInitResponseResumedUpload < Internal::Types::Model
      extend CloudPDF::Internal::Types::Union

      discriminant :kind

      member -> { CloudPDF::Types::DocumentsInitResponseResumedUploadPresigned }, key: "PRESIGNED"

      member -> { CloudPDF::Types::DocumentsInitResponseResumedUploadProxy }, key: "PROXY"
    end
  end
end
