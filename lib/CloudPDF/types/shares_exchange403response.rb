# frozen_string_literal: true

module CloudPDF
  module Types
    class SharesExchange403Response < Internal::Types::Model
      field :error, -> { CloudPDF::Types::SharesExchange403ResponseError }, optional: false, nullable: false
    end
  end
end
