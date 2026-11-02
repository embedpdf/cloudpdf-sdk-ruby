# frozen_string_literal: true

module CloudPDF
  module Types
    class FontProgram < Internal::Types::Model
      field :display_hash, -> { String }, optional: false, nullable: true, api_name: "displayHash"

      field :source_hash, -> { String }, optional: false, nullable: true, api_name: "sourceHash"

      field :embedded, -> { CloudPDF::Types::FontProgramEmbedded }, optional: false, nullable: false

      field :format, -> { CloudPDF::Types::FontProgramFormat }, optional: false, nullable: true

      field :embedding_permission, -> { CloudPDF::Types::FontProgramEmbeddingPermission }, optional: false, nullable: true, api_name: "embeddingPermission"

      field :can_download, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "canDownload"
    end
  end
end
