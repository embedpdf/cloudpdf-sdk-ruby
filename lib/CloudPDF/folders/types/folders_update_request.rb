# frozen_string_literal: true

module CloudPDF
  module Folders
    module Types
      class FoldersUpdateRequest < Internal::Types::Model
        field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"

        field :folder_id, -> { String }, optional: false, nullable: false, api_name: "folderId"

        field :name, -> { String }, optional: false, nullable: false
      end
    end
  end
end
