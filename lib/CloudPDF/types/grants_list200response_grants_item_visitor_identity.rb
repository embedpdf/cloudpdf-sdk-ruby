# frozen_string_literal: true

module CloudPDF
  module Types
    class GrantsList200ResponseGrantsItemVisitorIdentity < Internal::Types::Model
      field :fields, -> { CloudPDF::Types::GrantsList200ResponseGrantsItemVisitorIdentityFields }, optional: false, nullable: false

      field :ask, -> { CloudPDF::Types::GrantsList200ResponseGrantsItemVisitorIdentityAsk }, optional: false, nullable: false

      field :purpose, -> { String }, optional: true, nullable: false

      field :privacy_url, -> { String }, optional: true, nullable: false, api_name: "privacyUrl"
    end
  end
end
