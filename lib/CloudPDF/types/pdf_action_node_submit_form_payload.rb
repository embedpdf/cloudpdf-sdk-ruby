# frozen_string_literal: true

module CloudPDF
  module Types
    class PdfActionNodeSubmitFormPayload < Internal::Types::Model
      field :url, -> { String }, optional: false, nullable: false

      field :fields, -> { Internal::Types::Array[CloudPDF::Types::PdfActionTargetRef] }, optional: false, nullable: true

      field :flags, -> { CloudPDF::Types::PdfActionNodeSubmitFormPayloadFlags }, optional: false, nullable: false

      field :char_set, -> { String }, optional: true, nullable: false, api_name: "charSet"
    end
  end
end
