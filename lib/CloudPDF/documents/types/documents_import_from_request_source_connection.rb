# frozen_string_literal: true

module CloudPDF
  module Documents
    module Types
      # The operator pre-registered the authority: the request names a connection and a key inside it. Which provider
      # backs the connection (S3, GCS, Azure Blob, filesystem, ...) is deployment configuration, never wire surface.
      class DocumentsImportFromRequestSourceConnection < Internal::Types::Model
        field :connection_id, -> { String }, optional: false, nullable: false, api_name: "connectionId"

        field :key, -> { String }, optional: false, nullable: false

        field :revision, -> { String }, optional: true, nullable: false
      end
    end
  end
end
