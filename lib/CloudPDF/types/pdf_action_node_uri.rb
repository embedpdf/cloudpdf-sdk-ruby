# frozen_string_literal: true

module CloudPDF
  module Types
    class PdfActionNodeURI < Internal::Types::Model
      field :subtype, -> { String }, optional: false, nullable: false

      field :next_, -> { Internal::Types::Array[Object] }, optional: false, nullable: false, api_name: "next"

      field :uri, -> { String }, optional: false, nullable: false

      field :is_map, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "isMap"
    end
  end
end
