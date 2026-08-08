# frozen_string_literal: true

module Cloudpdf
  module Types
    class TenantsDeleteResponse < Internal::Types::Model
      field :error, -> { Cloudpdf::Types::TenantsDeleteResponseError }, optional: false, nullable: false
    end
  end
end
