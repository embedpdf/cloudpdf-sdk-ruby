# frozen_string_literal: true

module Cloudpdf
  module Types
    class TenantsCreate200Response < Internal::Types::Model
      field :tenant, -> { Cloudpdf::Types::TenantsCreate200ResponseTenant }, optional: false, nullable: false

      field :created, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
