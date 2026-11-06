# frozen_string_literal: true

module CloudPDF
  module Types
    class EngineError < Internal::Types::Model
      field :code, -> { CloudPDF::Types::EngineErrorCode }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false

      field :details, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
    end
  end
end
