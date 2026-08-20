# frozen_string_literal: true

module CloudPDF
  module Documents
    module Types
      class DocumentsImportFromRequest < Internal::Types::Model
        field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"

        field :source, -> { CloudPDF::Documents::Types::DocumentsImportFromRequestSource }, optional: false, nullable: false

        field :expected, -> { CloudPDF::Documents::Types::DocumentsImportFromRequestExpected }, optional: true, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :idempotency_key, -> { String }, optional: true, nullable: false, api_name: "idempotencyKey"

        field :dedup_mode, -> { CloudPDF::Documents::Types::DocumentsImportFromRequestDedupMode }, optional: true, nullable: false, api_name: "dedupMode"

        field :doc_id, -> { String }, optional: true, nullable: false, api_name: "docId"

        field :mode, -> { CloudPDF::Documents::Types::DocumentsImportFromRequestMode }, optional: true, nullable: false
      end
    end
  end
end
