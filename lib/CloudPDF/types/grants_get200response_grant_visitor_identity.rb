# frozen_string_literal: true

module CloudPDF
  module Types
    class GrantsGet200ResponseGrantVisitorIdentity < Internal::Types::Model
      field :fields, -> { CloudPDF::Types::GrantsGet200ResponseGrantVisitorIdentityFields }, optional: false, nullable: false

      field :ask, -> { CloudPDF::Types::GrantsGet200ResponseGrantVisitorIdentityAsk }, optional: false, nullable: false

      field :purpose, -> { String }, optional: true, nullable: false

      field :privacy_url, -> { String }, optional: true, nullable: false, api_name: "privacyUrl"
    end
  end
end
