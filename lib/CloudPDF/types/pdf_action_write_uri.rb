# frozen_string_literal: true

module CloudPDF
  module Types
    class PdfActionWriteURI < Internal::Types::Model
      field :uri, -> { String }, optional: false, nullable: false

      field :next_, -> { Internal::Types::Array[Object] }, optional: true, nullable: false, api_name: "next"
    end
  end
end
