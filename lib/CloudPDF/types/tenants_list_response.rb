# frozen_string_literal: true

module CloudPDF
  module Types
    class TenantsListResponse < Internal::Types::Model
      field :tenants, -> { Internal::Types::Array[CloudPDF::Types::TenantsListResponseTenantsItem] }, optional: false, nullable: false

      field :next_cursor, -> { String }, optional: false, nullable: true, api_name: "nextCursor"
    end
  end
end
