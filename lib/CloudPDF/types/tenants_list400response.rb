# frozen_string_literal: true

module CloudPDF
  module Types
    class TenantsList400Response < Internal::Types::Model
      field :error, -> { CloudPDF::Types::TenantsList400ResponseError }, optional: false, nullable: false
    end
  end
end
