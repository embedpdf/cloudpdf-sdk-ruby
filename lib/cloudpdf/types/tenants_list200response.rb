# frozen_string_literal: true

module Cloudpdf
  module Types
    class TenantsList200Response < Internal::Types::Model
      field :tenants, -> { Internal::Types::Array[Cloudpdf::Types::TenantsList200ResponseTenantsItem] }, optional: false, nullable: false

      field :next_cursor, -> { String }, optional: true, nullable: false, api_name: "nextCursor"
    end
  end
end
