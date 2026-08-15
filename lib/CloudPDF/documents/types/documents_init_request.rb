# frozen_string_literal: true

module CloudPDF
  module Documents
    module Types
      class DocumentsInitRequest < Internal::Types::Model
        field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"

        field :content_length, -> { Integer }, optional: false, nullable: false, api_name: "contentLength"

        field :content_sha256, -> { String }, optional: false, nullable: false, api_name: "contentSha256"

        field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :idempotency_key, -> { String }, optional: true, nullable: false, api_name: "idempotencyKey"

        field :dedup_mode, -> { CloudPDF::Documents::Types::DocumentsInitRequestDedupMode }, optional: true, nullable: false, api_name: "dedupMode"

        field :doc_id, -> { String }, optional: true, nullable: false, api_name: "docId"

        field :upload_ttl_sec, -> { Integer }, optional: true, nullable: false, api_name: "uploadTtlSec"

        field :upload_preference, -> { CloudPDF::Documents::Types::DocumentsInitRequestUploadPreference }, optional: true, nullable: false, api_name: "uploadPreference"
      end
    end
  end
end
