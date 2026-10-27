# frozen_string_literal: true

module CloudPDF
  module Types
    class SharesList200ResponseSharesItemVisitorIdentity < Internal::Types::Model
      field :fields, -> { CloudPDF::Types::SharesList200ResponseSharesItemVisitorIdentityFields }, optional: false, nullable: false

      field :ask, -> { CloudPDF::Types::SharesList200ResponseSharesItemVisitorIdentityAsk }, optional: false, nullable: false

      field :purpose, -> { String }, optional: true, nullable: false

      field :privacy_url, -> { String }, optional: true, nullable: false, api_name: "privacyUrl"
    end
  end
end
