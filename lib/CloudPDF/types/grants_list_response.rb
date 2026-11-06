# frozen_string_literal: true

module CloudPDF
  module Types
    class GrantsListResponse < Internal::Types::Model
      field :grants, -> { Internal::Types::Array[CloudPDF::Types::GrantsListResponseGrantsItem] }, optional: false, nullable: false

      field :next_cursor, -> { String }, optional: false, nullable: true, api_name: "nextCursor"
    end
  end
end
