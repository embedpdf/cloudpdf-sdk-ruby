# frozen_string_literal: true

module CloudPDF
  module Documents
    module Types
      class GetDocumentsRequest < Internal::Types::Model
        field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"

        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
