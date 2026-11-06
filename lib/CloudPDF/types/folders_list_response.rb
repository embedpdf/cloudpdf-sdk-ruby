# frozen_string_literal: true

module CloudPDF
  module Types
    class FoldersListResponse < Internal::Types::Model
      field :folders, -> { Internal::Types::Array[CloudPDF::Types::FoldersListResponseFoldersItem] }, optional: false, nullable: false

      field :next_cursor, -> { String }, optional: false, nullable: true, api_name: "nextCursor"
    end
  end
end
