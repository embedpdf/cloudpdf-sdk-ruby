# frozen_string_literal: true

module Cloudpdf
  module Types
    class DocumentsList200Response < Internal::Types::Model
      field :documents, -> { Internal::Types::Array[Cloudpdf::Types::DocumentsList200ResponseDocumentsItem] }, optional: false, nullable: false

      field :next_cursor, -> { String }, optional: true, nullable: false, api_name: "nextCursor"
    end
  end
end
