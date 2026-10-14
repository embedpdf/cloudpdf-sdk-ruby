# frozen_string_literal: true

module CloudPDF
  module Types
    class PdfActionWriteResetForm < Internal::Types::Model
      field :fields, -> { Internal::Types::Array[CloudPDF::Types::PdfActionTargetRef] }, optional: false, nullable: true

      field :exclude, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :next_, -> { Internal::Types::Array[Object] }, optional: true, nullable: false, api_name: "next"
    end
  end
end
