# frozen_string_literal: true

module Cloudpdf
  module Types
    class TenantsGet404Response < Internal::Types::Model
      field :error, -> { Cloudpdf::Types::TenantsGet404ResponseError }, optional: false, nullable: false
    end
  end
end
