# frozen_string_literal: true

module CloudPDF
  module Types
    class TenantsUsage404Response < Internal::Types::Model
      field :error, -> { CloudPDF::Types::TenantsUsage404ResponseError }, optional: false, nullable: false
    end
  end
end
