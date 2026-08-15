# frozen_string_literal: true

module CloudPDF
  module Types
    class TenantsGet200ResponseTenant < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :auto_provisioned, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "autoProvisioned"

      field :status, -> { CloudPDF::Types::TenantsGet200ResponseTenantStatus }, optional: true, nullable: false

      field :created_at, -> { Integer }, optional: false, nullable: false, api_name: "createdAt"
    end
  end
end
