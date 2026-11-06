# frozen_string_literal: true

module CloudPDF
  module Types
    class ErrorResponse < Internal::Types::Model
      field :error, -> { CloudPDF::Types::EngineError }, optional: false, nullable: false
    end
  end
end
