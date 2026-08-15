# frozen_string_literal: true

module CloudPDF
  module Types
    class SharesExchange422Response < Internal::Types::Model
      field :error, -> { CloudPDF::Types::SharesExchange422ResponseError }, optional: false, nullable: false
    end
  end
end
