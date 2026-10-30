# frozen_string_literal: true

module CloudPDF
  module Grants
    module Types
      class DeleteGrantsRequest < Internal::Types::Model
        field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"

        field :grant_id, -> { String }, optional: false, nullable: false, api_name: "grantId"
      end
    end
  end
end
