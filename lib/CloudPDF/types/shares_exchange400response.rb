# frozen_string_literal: true

module CloudPDF
  module Types
    class SharesExchange400Response < Internal::Types::Model
      field :error, -> { CloudPDF::Types::SharesExchange400ResponseError }, optional: false, nullable: false
    end
  end
end
