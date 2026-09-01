# frozen_string_literal: true

module CloudPDF
  module Types
    class PdfActionNodeGoto < Internal::Types::Model
      field :subtype, -> { String }, optional: false, nullable: false

      field :next_, -> { Internal::Types::Array[Object] }, optional: false, nullable: false, api_name: "next"

      field :destination, -> { CloudPDF::Types::PdfDestination }, optional: false, nullable: false
    end
  end
end
