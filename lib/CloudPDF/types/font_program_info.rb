# frozen_string_literal: true

module CloudPDF
  module Types
    class FontProgramInfo < Internal::Types::Model
      field :display_hash, -> { String }, optional: false, nullable: true, api_name: "displayHash"

      field :source_hash, -> { String }, optional: false, nullable: true, api_name: "sourceHash"

      field :embedded, -> { CloudPDF::Types::FontProgramInfoEmbedded }, optional: false, nullable: false

      field :format, -> { CloudPDF::Types::FontProgramInfoFormat }, optional: false, nullable: true

      field :embedding_permission, -> { CloudPDF::Types::FontProgramInfoEmbeddingPermission }, optional: false, nullable: true, api_name: "embeddingPermission"

      field :can_download, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "canDownload"

      field :covers, -> { Internal::Types::Array[CloudPDF::Types::FontProgramInfoCoversItem] }, optional: false, nullable: false

      field :ascent, -> { Integer }, optional: false, nullable: false

      field :descent, -> { Integer }, optional: false, nullable: false
    end
  end
end
