# frozen_string_literal: true

module CloudPDF
  module Types
    class TenantsGet404Response < Internal::Types::Model
      field :error, -> { CloudPDF::Types::TenantsGet404ResponseError }, optional: false, nullable: false
    end
  end
end
