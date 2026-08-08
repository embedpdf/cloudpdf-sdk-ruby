# frozen_string_literal: true

module Cloudpdf
  module Types
    class EngineErrorPayload < Internal::Types::Model
      field :name, -> { Cloudpdf::Types::EngineErrorPayloadName }, optional: false, nullable: false

      field :code, -> { Cloudpdf::Types::EngineErrorPayloadCode }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false

      field :details, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
    end
  end
end
