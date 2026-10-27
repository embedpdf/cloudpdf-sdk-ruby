# frozen_string_literal: true

module CloudPDF
  module Shares
    module Types
      class SharesExchangeRequest < Internal::Types::Model
        field :share_token, -> { String }, optional: false, nullable: false, api_name: "shareToken"

        field :password, -> { String }, optional: true, nullable: false

        field :visitor_handle, -> { String }, optional: true, nullable: false, api_name: "visitorHandle"

        field :restart, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :visitor_identity, -> { CloudPDF::Shares::Types::SharesExchangeRequestVisitorIdentity }, optional: true, nullable: false, api_name: "visitorIdentity"
      end
    end
  end
end
