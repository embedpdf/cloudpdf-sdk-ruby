# frozen_string_literal: true

module CloudPDF
  module Tenants
    module Types
      class DeleteTenantsRequest < Internal::Types::Model
        field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"
      end
    end
  end
end
