# frozen_string_literal: true

module CloudPDF
  module Types
    class SharesExchange410Response < Internal::Types::Model
      field :error, -> { CloudPDF::Types::SharesExchange410ResponseError }, optional: false, nullable: false
    end
  end
end
