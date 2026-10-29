# frozen_string_literal: true

module CloudPDF
  module Folders
    module Types
      class GetFoldersRequest < Internal::Types::Model
        field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"

        field :folder_id, -> { String }, optional: false, nullable: false, api_name: "folderId"
      end
    end
  end
end
