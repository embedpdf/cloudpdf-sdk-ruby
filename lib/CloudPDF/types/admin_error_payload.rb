# frozen_string_literal: true

module CloudPDF
  module Types
    class AdminErrorPayload < Internal::Types::Model
      field :error, -> { CloudPDF::Types::AdminErrorPayloadError }, optional: false, nullable: false
    end
  end
end
