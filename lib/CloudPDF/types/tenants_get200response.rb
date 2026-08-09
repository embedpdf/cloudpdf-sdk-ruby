# frozen_string_literal: true

module CloudPDF
  module Types
    class TenantsGet200Response < Internal::Types::Model
      field :tenant, -> { CloudPDF::Types::TenantsGet200ResponseTenant }, optional: false, nullable: false
    end
  end
end
