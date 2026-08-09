# frozen_string_literal: true

module CloudPDF
  module Types
    class TokensIssueRequestDoc < Internal::Types::Model
      field :sub, -> { String }, optional: false, nullable: false

      field :doc_id, -> { String }, optional: false, nullable: false, api_name: "docId"

      field :layer_name, -> { String }, optional: true, nullable: false, api_name: "layerName"

      field :scope, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :user_id, -> { String }, optional: true, nullable: false, api_name: "userId"

      field :display_name, -> { String }, optional: true, nullable: false, api_name: "displayName"

      field :group_id, -> { String }, optional: true, nullable: false, api_name: "groupId"

      field :groups, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :expires_in, -> { Integer }, optional: false, nullable: false, api_name: "expiresIn"
    end
  end
end
