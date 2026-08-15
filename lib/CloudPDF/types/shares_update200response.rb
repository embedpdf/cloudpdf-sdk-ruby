# frozen_string_literal: true

module CloudPDF
  module Types
    class SharesUpdate200Response < Internal::Types::Model
      field :share, -> { CloudPDF::Types::SharesUpdate200ResponseShare }, optional: false, nullable: false
    end
  end
end
