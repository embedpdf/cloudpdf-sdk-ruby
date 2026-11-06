# frozen_string_literal: true

module CloudPDF
  module Documents
    module Types
      class DocumentsCommitRequest < Internal::Types::Model
        field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"

        field :doc_id, -> { String }, optional: false, nullable: false, api_name: "docId"

        field :sha256, -> { String }, optional: false, nullable: false
      end
    end
  end
end
