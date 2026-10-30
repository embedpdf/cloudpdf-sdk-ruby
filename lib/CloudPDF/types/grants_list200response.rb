# frozen_string_literal: true

module CloudPDF
  module Types
    class GrantsList200Response < Internal::Types::Model
      field :grants, -> { Internal::Types::Array[CloudPDF::Types::GrantsList200ResponseGrantsItem] }, optional: false, nullable: false

      field :next_cursor, -> { String }, optional: true, nullable: false, api_name: "nextCursor"
    end
  end
end
