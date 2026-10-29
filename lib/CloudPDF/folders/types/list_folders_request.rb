# frozen_string_literal: true

module CloudPDF
  module Folders
    module Types
      class ListFoldersRequest < Internal::Types::Model
        field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"

        field :limit, -> { Integer }, optional: true, nullable: false

        field :cursor, -> { String }, optional: true, nullable: false

        field :parent_id, -> { String }, optional: true, nullable: false, api_name: "parentId"
      end
    end
  end
end
