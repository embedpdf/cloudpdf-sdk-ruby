# frozen_string_literal: true

module CloudPDF
  module Folders
    module Types
      class FoldersCreateRequest < Internal::Types::Model
        field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"

        field :name, -> { String }, optional: false, nullable: false

        field :parent_id, -> { String }, optional: true, nullable: false, api_name: "parentId"
      end
    end
  end
end
