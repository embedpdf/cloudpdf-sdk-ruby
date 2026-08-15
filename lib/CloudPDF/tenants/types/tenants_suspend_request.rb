# frozen_string_literal: true

module CloudPDF
  module Tenants
    module Types
      class TenantsSuspendRequest < Internal::Types::Model
        field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"

        field :reason, -> { String }, optional: true, nullable: false
      end
    end
  end
end
