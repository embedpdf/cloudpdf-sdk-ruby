# frozen_string_literal: true

module CloudPDF
  module Types
    class SharesCreate400Response < Internal::Types::Model
      field :error, -> { CloudPDF::Types::SharesCreate400ResponseError }, optional: false, nullable: false
    end
  end
end
