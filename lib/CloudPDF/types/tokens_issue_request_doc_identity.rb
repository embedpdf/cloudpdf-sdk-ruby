# frozen_string_literal: true

module CloudPDF
  module Types
    class TokensIssueRequestDocIdentity < Internal::Types::Model
      field :user_id, -> { String }, optional: true, nullable: false, api_name: "userId"

      field :display_name, -> { String }, optional: true, nullable: false, api_name: "displayName"

      field :email, -> { String }, optional: true, nullable: false

      field :title, -> { String }, optional: true, nullable: false

      field :organization, -> { String }, optional: true, nullable: false

      field :organizational_unit, -> { String }, optional: true, nullable: false, api_name: "organizationalUnit"

      field :group_id, -> { String }, optional: true, nullable: false, api_name: "groupId"
    end
  end
end
