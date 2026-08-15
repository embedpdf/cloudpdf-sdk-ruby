# frozen_string_literal: true

module CloudPDF
  module Types
    class SharesList200Response < Internal::Types::Model
      field :shares, -> { Internal::Types::Array[CloudPDF::Types::SharesList200ResponseSharesItem] }, optional: false, nullable: false

      field :next_cursor, -> { String }, optional: true, nullable: false, api_name: "nextCursor"
    end
  end
end
