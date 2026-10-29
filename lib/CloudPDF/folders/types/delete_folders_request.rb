# frozen_string_literal: true

module CloudPDF
  module Folders
    module Types
      class DeleteFoldersRequest < Internal::Types::Model
        field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"

        field :folder_id, -> { String }, optional: false, nullable: false, api_name: "folderId"

        field :recursive, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
