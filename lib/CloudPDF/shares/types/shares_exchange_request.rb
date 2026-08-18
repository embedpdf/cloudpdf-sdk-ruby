# frozen_string_literal: true

module CloudPDF
  module Shares
    module Types
      class SharesExchangeRequest < Internal::Types::Model
        field :share_token, -> { String }, optional: false, nullable: false, api_name: "shareToken"

        field :password, -> { String }, optional: true, nullable: false
      end
    end
  end
end
