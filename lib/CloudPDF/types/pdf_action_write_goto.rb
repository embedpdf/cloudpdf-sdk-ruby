# frozen_string_literal: true

module CloudPDF
  module Types
    class PdfActionWriteGoto < Internal::Types::Model
      field :destination, -> { CloudPDF::Types::PageDestination }, optional: false, nullable: false

      field :next_, -> { Internal::Types::Array[Object] }, optional: true, nullable: false, api_name: "next"
    end
  end
end
