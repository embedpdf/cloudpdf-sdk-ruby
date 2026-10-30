# frozen_string_literal: true

module CloudPDF
  module Types
    class GrantsVisitorsList200Response < Internal::Types::Model
      field :visitors, -> { Internal::Types::Array[CloudPDF::Types::GrantsVisitorsList200ResponseVisitorsItem] }, optional: false, nullable: false

      field :next_cursor, -> { String }, optional: true, nullable: false, api_name: "nextCursor"
    end
  end
end
