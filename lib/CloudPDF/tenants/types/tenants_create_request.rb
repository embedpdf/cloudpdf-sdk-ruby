# frozen_string_literal: true

module CloudPDF
  module Tenants
    module Types
      class TenantsCreateRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :name, -> { String }, optional: true, nullable: false
      end
    end
  end
end
