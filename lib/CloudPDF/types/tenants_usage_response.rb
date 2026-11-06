# frozen_string_literal: true

module CloudPDF
  module Types
    class TenantsUsageResponse < Internal::Types::Model
      field :tenant_id, -> { String }, optional: false, nullable: false, api_name: "tenantId"

      field :period_start, -> { String }, optional: false, nullable: false, api_name: "periodStart"

      field :period_end, -> { String }, optional: false, nullable: false, api_name: "periodEnd"

      field :metrics, -> { CloudPDF::Types::TenantsUsageResponseMetrics }, optional: false, nullable: false

      field :module_meters, -> { Internal::Types::Hash[String, Integer] }, optional: false, nullable: false, api_name: "moduleMeters"
    end
  end
end
