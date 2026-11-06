# frozen_string_literal: true

module CloudPDF
  module Types
    class TenantsUpdateResponse < Internal::Types::Model
      field :tenant, -> { CloudPDF::Types::TenantsUpdateResponseTenant }, optional: false, nullable: false
    end
  end
end
