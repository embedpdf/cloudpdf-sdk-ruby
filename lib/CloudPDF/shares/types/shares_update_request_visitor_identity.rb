# frozen_string_literal: true

module CloudPDF
  module Shares
    module Types
      class SharesUpdateRequestVisitorIdentity < Internal::Types::Model
        field :fields, -> { CloudPDF::Shares::Types::SharesUpdateRequestVisitorIdentityFields }, optional: false, nullable: false

        field :ask, -> { CloudPDF::Shares::Types::SharesUpdateRequestVisitorIdentityAsk }, optional: false, nullable: false

        field :purpose, -> { String }, optional: true, nullable: false

        field :privacy_url, -> { String }, optional: true, nullable: false, api_name: "privacyUrl"
      end
    end
  end
end
