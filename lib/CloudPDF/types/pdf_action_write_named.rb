# frozen_string_literal: true

module CloudPDF
  module Types
    class PdfActionWriteNamed < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :next_, -> { Internal::Types::Array[Object] }, optional: true, nullable: false, api_name: "next"
    end
  end
end
