# frozen_string_literal: true

module CloudPDF
  module Types
    class GrantsVisitorsListResponse < Internal::Types::Model
      field :visitors, -> { Internal::Types::Array[CloudPDF::Types::GrantsVisitorsListResponseVisitorsItem] }, optional: false, nullable: false

      field :next_cursor, -> { String }, optional: false, nullable: true, api_name: "nextCursor"
    end
  end
end
