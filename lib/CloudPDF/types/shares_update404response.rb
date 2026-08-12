# frozen_string_literal: true

module CloudPDF
  module Types
    class SharesUpdate404Response < Internal::Types::Model
      field :error, -> { CloudPDF::Types::SharesUpdate404ResponseError }, optional: false, nullable: false
    end
  end
end
