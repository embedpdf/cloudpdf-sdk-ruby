# frozen_string_literal: true

module CloudPDF
  module Types
    class EngineErrorPayload < Internal::Types::Model
      field :name, -> { CloudPDF::Types::EngineErrorPayloadName }, optional: false, nullable: false

      field :code, -> { CloudPDF::Types::EngineErrorPayloadCode }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false

      field :details, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
    end
  end
end
