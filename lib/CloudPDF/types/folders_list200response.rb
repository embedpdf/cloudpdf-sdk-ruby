# frozen_string_literal: true

module CloudPDF
  module Types
    class FoldersList200Response < Internal::Types::Model
      field :folders, -> { Internal::Types::Array[CloudPDF::Types::FoldersList200ResponseFoldersItem] }, optional: false, nullable: false

      field :next_cursor, -> { String }, optional: false, nullable: true, api_name: "nextCursor"
    end
  end
end
