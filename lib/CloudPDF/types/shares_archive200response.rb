# frozen_string_literal: true

module CloudPDF
  module Types
    class SharesArchive200Response < Internal::Types::Model
      field :share, -> { CloudPDF::Types::SharesArchive200ResponseShare }, optional: false, nullable: false
    end
  end
end
