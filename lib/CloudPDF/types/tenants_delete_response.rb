# frozen_string_literal: true

module CloudPDF
  module Types
    class TenantsDeleteResponse < Internal::Types::Model
      field :error, -> { CloudPDF::Types::TenantsDeleteResponseError }, optional: false, nullable: false
    end
  end
end
