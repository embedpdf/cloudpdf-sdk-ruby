# frozen_string_literal: true

module CloudPDF
  module Types
    class GrantsArchiveResponseGrantVisitorIdentity < Internal::Types::Model
      field :fields, -> { CloudPDF::Types::GrantsArchiveResponseGrantVisitorIdentityFields }, optional: false, nullable: false

      field :ask, -> { CloudPDF::Types::GrantsArchiveResponseGrantVisitorIdentityAsk }, optional: false, nullable: false

      field :purpose, -> { String }, optional: true, nullable: false

      field :privacy_url, -> { String }, optional: true, nullable: false, api_name: "privacyUrl"
    end
  end
end
