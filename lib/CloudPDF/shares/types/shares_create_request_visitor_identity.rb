# frozen_string_literal: true

module CloudPDF
  module Shares
    module Types
      class SharesCreateRequestVisitorIdentity < Internal::Types::Model
        field :fields, -> { CloudPDF::Shares::Types::SharesCreateRequestVisitorIdentityFields }, optional: false, nullable: false

        field :ask, -> { CloudPDF::Shares::Types::SharesCreateRequestVisitorIdentityAsk }, optional: false, nullable: false

        field :purpose, -> { String }, optional: true, nullable: false

        field :privacy_url, -> { String }, optional: true, nullable: false, api_name: "privacyUrl"
      end
    end
  end
end
