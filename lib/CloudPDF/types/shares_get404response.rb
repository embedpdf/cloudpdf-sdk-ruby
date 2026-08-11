# frozen_string_literal: true

module CloudPDF
  module Types
    class SharesGet404Response < Internal::Types::Model
      field :error, -> { CloudPDF::Types::SharesGet404ResponseError }, optional: false, nullable: false
    end
  end
end
