# frozen_string_literal: true

module CloudPDF
  module Types
    class SharesGet200Response < Internal::Types::Model
      field :share, -> { CloudPDF::Types::SharesGet200ResponseShare }, optional: false, nullable: false
    end
  end
end
