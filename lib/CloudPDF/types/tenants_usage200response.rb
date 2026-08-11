# frozen_string_literal: true

module CloudPDF
  module Types
    class TenantsUsage200Response < Internal::Types::Model
      field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"

      field :period_start, -> { String }, optional: false, nullable: false, api_name: "periodStart"

      field :period_end, -> { String }, optional: false, nullable: false, api_name: "periodEnd"

      field :metrics, -> { CloudPDF::Types::TenantsUsage200ResponseMetrics }, optional: false, nullable: false
    end
  end
end
