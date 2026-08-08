# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocumentsInit200ResponseCreatedUploadPresignedPresigned < Internal::Types::Model
      field :url, -> { String }, optional: false, nullable: false

      field :headers, -> { Internal::Types::Hash[String, String] }, optional: false, nullable: false

      field :method_, -> { Cloudpdf::Types::DocumentsInit200ResponseCreatedUploadPresignedPresignedMethod }, optional: false, nullable: false, api_name: "method"

      field :expires_at, -> { Integer }, optional: false, nullable: false, api_name: "expiresAt"
    end
  end
end
