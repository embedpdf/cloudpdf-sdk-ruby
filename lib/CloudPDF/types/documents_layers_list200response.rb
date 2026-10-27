# frozen_string_literal: true

module CloudPDF
  module Types
    class DocumentsLayersList200Response < Internal::Types::Model
      field :layers, -> { Internal::Types::Array[CloudPDF::Types::DocumentsLayersList200ResponseLayersItem] }, optional: false, nullable: false

      field :next_cursor, -> { String }, optional: true, nullable: false, api_name: "nextCursor"
    end
  end
end
