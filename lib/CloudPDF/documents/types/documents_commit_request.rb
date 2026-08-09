# frozen_string_literal: true

module CloudPDF
  module Documents
    module Types
      class DocumentsCommitRequest < Internal::Types::Model
        field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"

        field :id, -> { String }, optional: false, nullable: false

        field :sha256, -> { String }, optional: false, nullable: false
      end
    end
  end
end
