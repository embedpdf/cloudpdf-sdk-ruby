# frozen_string_literal: true

module CloudPDF
  module Documents
    module Types
      class UploadProxyDocumentsRequest < Internal::Types::Model
        field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"

        field :doc_id, -> { String }, optional: false, nullable: false, api_name: "docId"

        field :file, -> { Object }, optional: false, nullable: false
      end
    end
  end
end
