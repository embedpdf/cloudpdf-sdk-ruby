# frozen_string_literal: true

module CloudPDF
  module Types
    class GrantsExchangeResponseVisitor < Internal::Types::Model
      field :handle, -> { String }, optional: false, nullable: false

      field :keep, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :identity_request, -> { CloudPDF::Types::GrantsExchangeResponseVisitorIdentityRequest }, optional: false, nullable: true, api_name: "identityRequest"
    end
  end
end
