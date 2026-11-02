# frozen_string_literal: true

module CloudPDF
  module Types
    class FontResolveRun < Internal::Types::Model
      field :text, -> { String }, optional: false, nullable: false

      field :font_family, -> { String }, optional: true, nullable: false, api_name: "fontFamily"

      field :family, -> { String }, optional: true, nullable: false

      field :weight, -> { Integer }, optional: true, nullable: false

      field :italic, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
