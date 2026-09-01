# frozen_string_literal: true

module CloudPDF
  module Types
    class PdfActionNodeSubmitForm < Internal::Types::Model
      field :subtype, -> { String }, optional: false, nullable: false

      field :next_, -> { Internal::Types::Array[Object] }, optional: false, nullable: false, api_name: "next"

      field :payload, -> { CloudPDF::Types::PdfActionNodeSubmitFormPayload }, optional: true, nullable: false
    end
  end
end
