# frozen_string_literal: true

module CloudPDF
  module Types
    class PdfActionNodeHide < Internal::Types::Model
      field :subtype, -> { String }, optional: false, nullable: false

      field :next_, -> { Internal::Types::Array[Object] }, optional: false, nullable: false, api_name: "next"

      field :targets, -> { Internal::Types::Array[CloudPDF::Types::PdfActionTargetRef] }, optional: false, nullable: false

      field :hide, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
