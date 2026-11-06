# frozen_string_literal: true

module CloudPDF
  module Types
    class TokensIssueRequestUpload < Internal::Types::Model
      field :sub, -> { String }, optional: false, nullable: false

      field :folder_id, -> { String }, optional: true, nullable: false, api_name: "folderId"

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

      field :max_files, -> { Integer }, optional: true, nullable: false, api_name: "maxFiles"

      field :max_bytes, -> { Integer }, optional: true, nullable: false, api_name: "maxBytes"

      field :origins, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :expires_in_seconds, -> { Integer }, optional: false, nullable: false, api_name: "expiresInSeconds"
    end
  end
end
