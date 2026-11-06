# frozen_string_literal: true

module CloudPDF
  module Types
    class TenantsCreateResponse < Internal::Types::Model
      field :tenant, -> { CloudPDF::Types::TenantsCreateResponseTenant }, optional: false, nullable: false

      field :created, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
