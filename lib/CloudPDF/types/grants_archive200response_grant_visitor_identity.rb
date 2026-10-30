# frozen_string_literal: true

module CloudPDF
  module Types
    class GrantsArchive200ResponseGrantVisitorIdentity < Internal::Types::Model
      field :fields, -> { CloudPDF::Types::GrantsArchive200ResponseGrantVisitorIdentityFields }, optional: false, nullable: false

      field :ask, -> { CloudPDF::Types::GrantsArchive200ResponseGrantVisitorIdentityAsk }, optional: false, nullable: false

      field :purpose, -> { String }, optional: true, nullable: false

      field :privacy_url, -> { String }, optional: true, nullable: false, api_name: "privacyUrl"
    end
  end
end
