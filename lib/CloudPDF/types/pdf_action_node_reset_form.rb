# frozen_string_literal: true

module CloudPDF
  module Types
    class PdfActionNodeResetForm < Internal::Types::Model
      field :subtype, -> { String }, optional: false, nullable: false

      field :next_, -> { Internal::Types::Array[Object] }, optional: false, nullable: false, api_name: "next"

      field :fields, -> { Internal::Types::Array[CloudPDF::Types::PdfActionTargetRef] }, optional: false, nullable: true

      field :exclude, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
