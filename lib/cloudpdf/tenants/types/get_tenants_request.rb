# frozen_string_literal: true

module Cloudpdf
  module Tenants
    module Types
      class GetTenantsRequest < Internal::Types::Model
        field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"
      end
    end
  end
end
