# frozen_string_literal: true

module CloudPDF
  module Folders
    module Types
      class FoldersMoveIntoRequest < Internal::Types::Model
        field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"

        field :folder_id, -> { String }, optional: false, nullable: false, api_name: "folderId"

        field :document_ids, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "documentIds"

        field :folder_ids, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "folderIds"
      end
    end
  end
end
