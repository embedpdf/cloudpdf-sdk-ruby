# frozen_string_literal: true

module CloudPDF
  module Types
    class PdfActionWriteHide < Internal::Types::Model
      field :targets, -> { Internal::Types::Array[CloudPDF::Types::PdfActionTargetRef] }, optional: false, nullable: false

      field :hide, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :next_, -> { Internal::Types::Array[Object] }, optional: true, nullable: false, api_name: "next"
    end
  end
end
