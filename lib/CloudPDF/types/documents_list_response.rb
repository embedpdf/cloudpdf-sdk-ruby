# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsListResponse < Internal::Types::Model
      field :documents, -> { Internal::Types::Array[CloudPDF::Types::DocumentsListResponseDocumentsItem] }, optional: false, nullable: false

      field :next_cursor, -> { String }, optional: false, nullable: true, api_name: "nextCursor"
    end
  end
end
