# frozen_string_literal: true

module CloudPDF
  module Types
    class SharesArchive200ResponseShareVisitorIdentity < Internal::Types::Model
      field :fields, -> { CloudPDF::Types::SharesArchive200ResponseShareVisitorIdentityFields }, optional: false, nullable: false

      field :ask, -> { CloudPDF::Types::SharesArchive200ResponseShareVisitorIdentityAsk }, optional: false, nullable: false

      field :purpose, -> { String }, optional: true, nullable: false

      field :privacy_url, -> { String }, optional: true, nullable: false, api_name: "privacyUrl"
    end
  end
end
