# frozen_string_literal: true

module CloudPDF
  module Types
    class TenantsCreate400Response < Internal::Types::Model
      field :error, -> { CloudPDF::Types::TenantsCreate400ResponseError }, optional: false, nullable: false
    end
  end
end
