# frozen_string_literal: true

module CloudPDF
  module Types
    class SharesExchange200ResponseVisitorIdentityRequest < Internal::Types::Model
      field :fields, -> { CloudPDF::Types::SharesExchange200ResponseVisitorIdentityRequestFields }, optional: false, nullable: false

      field :missing, -> { Internal::Types::Array[CloudPDF::Types::SharesExchange200ResponseVisitorIdentityRequestMissingItem] }, optional: false, nullable: false

      field :invalid, -> { Internal::Types::Array[CloudPDF::Types::SharesExchange200ResponseVisitorIdentityRequestInvalidItem] }, optional: false, nullable: false

      field :purpose, -> { String }, optional: true, nullable: false

      field :privacy_url, -> { String }, optional: true, nullable: false, api_name: "privacyUrl"
    end
  end
end
