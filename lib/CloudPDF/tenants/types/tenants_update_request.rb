# frozen_string_literal: true

module CloudPDF
  module Tenants
    module Types
      class TenantsUpdateRequest < Internal::Types::Model
        field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"

        field :features, -> { Internal::Types::Array[CloudPDF::Types::TenantFeature] }, optional: false, nullable: false
      end
    end
  end
end
