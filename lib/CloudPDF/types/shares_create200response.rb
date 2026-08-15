# frozen_string_literal: true

module CloudPDF
  module Types
    class SharesCreate200Response < Internal::Types::Model
      field :share, -> { CloudPDF::Types::SharesCreate200ResponseShare }, optional: false, nullable: false
    end
  end
end
