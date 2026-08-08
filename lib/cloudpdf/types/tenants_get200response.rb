# frozen_string_literal: true

module Cloudpdf
  module Types
    class TenantsGet200Response < Internal::Types::Model
      field :tenant, -> { Cloudpdf::Types::TenantsGet200ResponseTenant }, optional: false, nullable: false
    end
  end
end
