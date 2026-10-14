# frozen_string_literal: true

module CloudPDF
  module Types
    class PdfActionWriteJavascript < Internal::Types::Model
      field :script, -> { String }, optional: false, nullable: false

      field :next_, -> { Internal::Types::Array[Object] }, optional: true, nullable: false, api_name: "next"
    end
  end
end
