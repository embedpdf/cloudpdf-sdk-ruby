# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsLayersListResponse < Internal::Types::Model
      field :layers, -> { Internal::Types::Array[CloudPDF::Types::DocumentsLayersListResponseLayersItem] }, optional: false, nullable: false

      field :next_cursor, -> { String }, optional: false, nullable: true, api_name: "nextCursor"
    end
  end
end
