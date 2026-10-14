# frozen_string_literal: true

module CloudPDF
  module Types
    class ChangeOpMetadataUpdateCustom < Internal::Types::Model
      field :patch, -> { Internal::Types::Hash[String, String] }, optional: false, nullable: false
    end
  end
end
