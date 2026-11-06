# frozen_string_literal: true

module CloudPDF
  module Documents
    module Types
      class DocumentsUpdateRequest < Internal::Types::Model
        field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"

        field :doc_id, -> { String }, optional: false, nullable: false, api_name: "docId"

        field :name, -> { String }, optional: false, nullable: false
      end
    end
  end
end
