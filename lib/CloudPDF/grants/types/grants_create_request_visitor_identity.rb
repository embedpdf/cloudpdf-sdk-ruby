# frozen_string_literal: true

module CloudPDF
  module Grants
    module Types
      class GrantsCreateRequestVisitorIdentity < Internal::Types::Model
        field :fields, -> { CloudPDF::Grants::Types::GrantsCreateRequestVisitorIdentityFields }, optional: false, nullable: false

        field :ask, -> { CloudPDF::Grants::Types::GrantsCreateRequestVisitorIdentityAsk }, optional: false, nullable: false

        field :purpose, -> { String }, optional: true, nullable: false

        field :privacy_url, -> { String }, optional: true, nullable: false, api_name: "privacyUrl"
      end
    end
  end
end
