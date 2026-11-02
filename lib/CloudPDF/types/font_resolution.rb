# frozen_string_literal: true

module CloudPDF
  module Types
    class FontResolution < Internal::Types::Model
      field :runs, -> { Internal::Types::Array[CloudPDF::Types::ResolvedFontRun] }, optional: false, nullable: false

      field :missing_characters, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "missingCharacters"
    end
  end
end
