# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsLayersList200ResponseLayersItem < Internal::Types::Model
      field :doc_id, -> { String }, optional: false, nullable: false, api_name: "docId"

      field :layer_name, -> { String }, optional: false, nullable: false, api_name: "layerName"

      field :grant_id, -> { String }, optional: false, nullable: true, api_name: "grantId"

      field :visitor_id, -> { String }, optional: false, nullable: true, api_name: "visitorId"

      field :storage_size_bytes, -> { Integer }, optional: false, nullable: true, api_name: "storageSizeBytes"

      field :created_at, -> { Integer }, optional: false, nullable: false, api_name: "createdAt"

      field :updated_at, -> { Integer }, optional: false, nullable: false, api_name: "updatedAt"

      field :last_seen_at, -> { Integer }, optional: false, nullable: true, api_name: "lastSeenAt"
    end
  end
end
