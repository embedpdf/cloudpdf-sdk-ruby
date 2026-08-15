# frozen_string_literal: true

module CloudPDF
  module Types
    class SharesCreate404Response < Internal::Types::Model
      field :error, -> { CloudPDF::Types::SharesCreate404ResponseError }, optional: false, nullable: false
    end
  end
end
