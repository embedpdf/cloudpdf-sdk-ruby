# frozen_string_literal: true

module CloudPDF
  module Types
    class TenantsGetResponse < Internal::Types::Model
      field :tenant, -> { CloudPDF::Types::TenantsGetResponseTenant }, optional: false, nullable: false
    end
  end
end
