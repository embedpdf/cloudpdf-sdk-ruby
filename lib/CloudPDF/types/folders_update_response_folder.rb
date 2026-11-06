# frozen_string_literal: true

module CloudPDF
  module Types
    class FoldersUpdateResponseFolder < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"

      field :parent_id, -> { String }, optional: false, nullable: false, api_name: "parentId"

      field :name, -> { String }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

      field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"

      field :created_by, -> { String }, optional: false, nullable: true, api_name: "createdBy"
    end
  end
end
