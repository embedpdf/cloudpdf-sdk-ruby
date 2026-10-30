# frozen_string_literal: true

module CloudPDF
  module Types
    class GrantsGet200Response < Internal::Types::Model
      field :grant, -> { CloudPDF::Types::GrantsGet200ResponseGrant }, optional: false, nullable: false
    end
  end
end
