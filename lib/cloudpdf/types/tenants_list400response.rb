# frozen_string_literal: true

module Cloudpdf
  module Types
    class TenantsList400Response < Internal::Types::Model
      field :error, -> { Cloudpdf::Types::TenantsList400ResponseError }, optional: false, nullable: false
    end
  end
end
