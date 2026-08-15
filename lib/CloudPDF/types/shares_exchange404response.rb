# frozen_string_literal: true

module CloudPDF
  module Types
    class SharesExchange404Response < Internal::Types::Model
      field :error, -> { CloudPDF::Types::SharesExchange404ResponseError }, optional: false, nullable: false
    end
  end
end
