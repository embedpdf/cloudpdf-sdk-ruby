# frozen_string_literal: true

module CloudPDF
  module Grants
    module Types
      class GrantsExchangeRequest < Internal::Types::Model
        field :grant, -> { String }, optional: false, nullable: false

        field :passphrase, -> { String }, optional: true, nullable: false

        field :visitor_handle, -> { String }, optional: true, nullable: false, api_name: "visitorHandle"

        field :restart, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :visitor_identity, -> { CloudPDF::Grants::Types::GrantsExchangeRequestVisitorIdentity }, optional: true, nullable: false, api_name: "visitorIdentity"
      end
    end
  end
end
