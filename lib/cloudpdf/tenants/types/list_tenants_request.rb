# frozen_string_literal: true

module Cloudpdf
  module Tenants
    module Types
      class ListTenantsRequest < Internal::Types::Model
        field :limit, -> { Integer }, optional: true, nullable: false

        field :cursor, -> { String }, optional: true, nullable: false
      end
    end
  end
end
