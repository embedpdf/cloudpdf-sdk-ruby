# frozen_string_literal: true

module CloudPDF
  module Types
    class FontProgram < Internal::Types::Model
      field :display_sha256, -> { String }, optional: false, nullable: true, api_name: "displaySha256"

      field :source_sha256, -> { String }, optional: false, nullable: true, api_name: "sourceSha256"

      field :embedded, -> { CloudPDF::Types::FontProgramEmbedded }, optional: false, nullable: false

      field :format, -> { CloudPDF::Types::FontProgramFormat }, optional: false, nullable: true

      field :embedding_permission, -> { CloudPDF::Types::FontProgramEmbeddingPermission }, optional: false, nullable: true, api_name: "embeddingPermission"

      field :can_download, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "canDownload"
    end
  end
end
