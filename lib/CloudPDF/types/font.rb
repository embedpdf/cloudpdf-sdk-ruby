# frozen_string_literal: true

module CloudPDF
  module Types
    class Font < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :source, -> { CloudPDF::Types::FontSource }, optional: false, nullable: false

      field :family_name, -> { String }, optional: false, nullable: false, api_name: "familyName"

      field :weight, -> { Integer }, optional: false, nullable: false

      field :italic, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :post_script_name, -> { String }, optional: false, nullable: true, api_name: "postScriptName"

      field :can_choose, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "canChoose"

      field :restrictions, -> { Internal::Types::Array[CloudPDF::Types::FontRestrictionsItem] }, optional: false, nullable: false

      field :programs, -> { Internal::Types::Array[CloudPDF::Types::FontProgram] }, optional: false, nullable: false
    end
  end
end
