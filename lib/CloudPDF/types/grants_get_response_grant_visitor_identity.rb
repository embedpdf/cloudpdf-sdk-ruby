# frozen_string_literal: true

module CloudPDF
  module Types
    class GrantsGetResponseGrantVisitorIdentity < Internal::Types::Model
      field :fields, -> { CloudPDF::Types::GrantsGetResponseGrantVisitorIdentityFields }, optional: false, nullable: false

      field :ask, -> { CloudPDF::Types::GrantsGetResponseGrantVisitorIdentityAsk }, optional: false, nullable: false

      field :purpose, -> { String }, optional: true, nullable: false

      field :privacy_url, -> { String }, optional: true, nullable: false, api_name: "privacyUrl"
    end
  end
end
