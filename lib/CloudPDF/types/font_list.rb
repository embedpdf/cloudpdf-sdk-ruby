# frozen_string_literal: true

module CloudPDF
  module Types
    class FontList < Internal::Types::Model
      field :fonts, -> { Internal::Types::Array[CloudPDF::Types::Font] }, optional: false, nullable: false

      field :fallbacks, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :last_resort, -> { CloudPDF::Types::FontProgram }, optional: false, nullable: false, api_name: "lastResort"
    end
  end
end
