# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsInitResponseResumedUploadPresignedPresigned < Internal::Types::Model
      field :url, -> { String }, optional: false, nullable: false

      field :headers, -> { Internal::Types::Hash[String, String] }, optional: false, nullable: false

      field :method_, -> { CloudPDF::Types::DocumentsInitResponseResumedUploadPresignedPresignedMethod }, optional: false, nullable: false, api_name: "method"

      field :expires_at, -> { String }, optional: false, nullable: false, api_name: "expiresAt"
    end
  end
end
