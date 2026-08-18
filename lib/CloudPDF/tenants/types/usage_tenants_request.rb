# frozen_string_literal: true

module CloudPDF
  module Tenants
    module Types
      class UsageTenantsRequest < Internal::Types::Model
        field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"

        field :period, -> { String }, optional: true, nullable: false
      end
    end
  end
end
