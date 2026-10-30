# frozen_string_literal: true

module CloudPDF
  module Types
    class GrantsExchange200ResponseVisitor < Internal::Types::Model
      field :handle, -> { String }, optional: false, nullable: false

      field :keep, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :identity_request, -> { CloudPDF::Types::GrantsExchange200ResponseVisitorIdentityRequest }, optional: false, nullable: true, api_name: "identityRequest"
    end
  end
end
