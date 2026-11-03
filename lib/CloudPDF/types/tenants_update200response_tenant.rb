# frozen_string_literal: true

module CloudPDF
  module Types
    class TenantsUpdate200ResponseTenant < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :auto_provisioned, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "autoProvisioned"

      field :status, -> { CloudPDF::Types::TenantsUpdate200ResponseTenantStatus }, optional: true, nullable: false

      field :features, -> { Internal::Types::Array[CloudPDF::Types::TenantFeature] }, optional: true, nullable: false

      field :created_at, -> { Integer }, optional: false, nullable: false, api_name: "createdAt"
    end
  end
end
