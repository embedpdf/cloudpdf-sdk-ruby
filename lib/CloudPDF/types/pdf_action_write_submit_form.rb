# frozen_string_literal: true

module CloudPDF
  module Types
    class PdfActionWriteSubmitForm < Internal::Types::Model
      field :url, -> { String }, optional: false, nullable: false

      field :fields, -> { Internal::Types::Array[CloudPDF::Types::PdfActionTargetRef] }, optional: false, nullable: true

      field :flags, -> { Integer }, optional: true, nullable: false

      field :next_, -> { Internal::Types::Array[Object] }, optional: true, nullable: false, api_name: "next"
    end
  end
end
