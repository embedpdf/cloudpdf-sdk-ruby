# frozen_string_literal: true

module CloudPDF
  module Types
    class TenantsUpdate200Response < Internal::Types::Model
      field :tenant, -> { CloudPDF::Types::TenantsUpdate200ResponseTenant }, optional: false, nullable: false
    end
  end
end
