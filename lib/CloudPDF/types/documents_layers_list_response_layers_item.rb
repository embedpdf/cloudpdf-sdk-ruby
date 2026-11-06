# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsLayersListResponseLayersItem < Internal::Types::Model
      field :doc_id, -> { String }, optional: false, nullable: false, api_name: "docId"

      field :layer_name, -> { String }, optional: false, nullable: false, api_name: "layerName"

      field :grant_id, -> { String }, optional: false, nullable: true, api_name: "grantId"

      field :visitor_id, -> { String }, optional: false, nullable: true, api_name: "visitorId"

      field :size_bytes, -> { Integer }, optional: false, nullable: true, api_name: "sizeBytes"

      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

      field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"

      field :last_seen_at, -> { String }, optional: false, nullable: true, api_name: "lastSeenAt"
    end
  end
end
