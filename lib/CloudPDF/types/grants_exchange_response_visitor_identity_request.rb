# frozen_string_literal: true

module CloudPDF
  module Types
    class GrantsExchangeResponseVisitorIdentityRequest < Internal::Types::Model
      field :fields, -> { CloudPDF::Types::GrantsExchangeResponseVisitorIdentityRequestFields }, optional: false, nullable: false

      field :missing, -> { Internal::Types::Array[CloudPDF::Types::GrantsExchangeResponseVisitorIdentityRequestMissingItem] }, optional: false, nullable: false

      field :invalid, -> { Internal::Types::Array[CloudPDF::Types::GrantsExchangeResponseVisitorIdentityRequestInvalidItem] }, optional: false, nullable: false

      field :purpose, -> { String }, optional: true, nullable: false

      field :privacy_url, -> { String }, optional: true, nullable: false, api_name: "privacyUrl"
    end
  end
end
