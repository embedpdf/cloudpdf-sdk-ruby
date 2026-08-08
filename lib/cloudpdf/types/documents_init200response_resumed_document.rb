# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocumentsInit200ResponseResumedDocument < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"

      field :state, -> { Cloudpdf::Types::DocumentsInit200ResponseResumedDocumentState }, optional: false, nullable: false

      field :base_sha, -> { String }, optional: false, nullable: true, api_name: "baseSha"

      field :storage_size_bytes, -> { Integer }, optional: false, nullable: true, api_name: "storageSizeBytes"

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :idempotency_key, -> { String }, optional: false, nullable: true, api_name: "idempotencyKey"

      field :failure_reason, -> { String }, optional: false, nullable: true, api_name: "failureReason"

      field :thumbnail_state, -> { Cloudpdf::Types::DocumentsInit200ResponseResumedDocumentThumbnailState }, optional: true, nullable: false, api_name: "thumbnailState"

      field :thumbnail_url, -> { String }, optional: true, nullable: false, api_name: "thumbnailUrl"

      field :created_at, -> { Integer }, optional: false, nullable: false, api_name: "createdAt"

      field :updated_at, -> { Integer }, optional: false, nullable: false, api_name: "updatedAt"

      field :created_by, -> { String }, optional: false, nullable: true, api_name: "createdBy"
    end
  end
end
