# frozen_string_literal: true

module CloudPDF
  module Types
    class ResolvedFontRun < Internal::Types::Model
      field :font, -> { String }, optional: false, nullable: false

      field :weight, -> { Integer }, optional: false, nullable: false

      field :italic, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :substituted, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :program, -> { String }, optional: false, nullable: true

      field :fallbacks, -> { Internal::Types::Array[String] }, optional: false, nullable: false
    end
  end
end
