# frozen_string_literal: true

module CloudPDF
  module Types
    class PdfActionNodeLaunch < Internal::Types::Model
      field :subtype, -> { String }, optional: false, nullable: false

      field :next_, -> { Internal::Types::Array[Object] }, optional: false, nullable: false, api_name: "next"

      field :file_path, -> { String }, optional: false, nullable: false, api_name: "filePath"
    end
  end
end
